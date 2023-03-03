import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:repo_search/features/github_repo/data/gihub_repo_repository.dart';
import 'package:repo_search/features/github_repo/model/github_repo.dart';
import 'package:repo_search/features/github_repo/ui/owner_image.dart';
import 'package:repo_search/utils/build_context_extension.dart';
import 'package:url_launcher/url_launcher_string.dart';

final watchersCountFutureProviderFamily =
    FutureProvider.family.autoDispose<int, String>((
  ref,
  repositoryUrl,
) async {
  final result = await ref.watch(githubRepoRepositoryProvider).getWatchersCount(
        repositoryUrl: repositoryUrl,
      );
  // 成功時にキャッシュする
  ref.keepAlive();
  return result;
});

class GithubRepoDetailScreen extends ConsumerWidget {
  final GithubRepo githubRepo;
  const GithubRepoDetailScreen({required this.githubRepo, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final updatedAtFormatter = DateFormat.yMMMd();
    final countFormat = NumberFormat.decimalPattern();
    final watchersCountAsync =
        ref.watch(watchersCountFutureProviderFamily(githubRepo.url));

    return Scaffold(
      appBar: AppBar(
        title: Text(githubRepo.fullName),
      ),
      // ListViewデフォルトのpaddingを書き換えているので、SafeAreaを使う
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            // ListViewの制約を解除する
            UnconstrainedBox(
              child: OwnerImage(
                githubRepo: githubRepo,
                radius: 100,
              ),
            ),
            const Gap(16),
            // オーナー名とリポジトリ名
            // 改行が入ってもいい感じに表示するためにRichTextを使っている
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: githubRepo.ownerName,
                    style: context.textTheme.headlineSmall?.apply(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap =
                          () => _launchURL(context, githubRepo.ownerHtmlUrl),
                  ),
                  TextSpan(
                    text: ' / ',
                    style: context.textTheme.headlineSmall,
                  ),
                  TextSpan(
                    text: githubRepo.name,
                    style: context.textTheme.headlineSmall?.apply(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => _launchURL(context, githubRepo.htmlUrl),
                  ),
                ],
              ),
            ),
            const Gap(16),
            Text(
              githubRepo.description ?? context.l10n.githubRepoDescriptionEmpty,
              style: githubRepo.description == null
                  ? TextStyle(
                      color: Theme.of(context).disabledColor,
                    )
                  : null,
            ),
            SizedBox(
              height: 48,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  TextButton.icon(
                    onPressed: () =>
                        _launchURL(context, githubRepo.stargazersHtmlUrl),
                    icon: const Icon(Icons.star),
                    label: Text(countFormat.format(githubRepo.stargazersCount)),
                  ),
                  const Gap(8),
                  TextButton.icon(
                    onPressed: () =>
                        _launchURL(context, githubRepo.watchersHtmlUrl),
                    icon: const Icon(Icons.remove_red_eye),
                    label: watchersCountAsync.when(
                      data: (data) => Text(countFormat.format(data)),
                      // スペースが無いのと致命的でないので、エラー表示は最小限にしている
                      error: (error, stackTrace) => const Text('Error'),
                      loading: () => const Center(
                        child: SizedBox(
                          height: 16,
                          width: 16,
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    ),
                  ),
                  const Gap(8),
                  TextButton.icon(
                    onPressed: () =>
                        _launchURL(context, githubRepo.forksHtmlUrl),
                    icon: const Icon(Icons.call_split),
                    label: Text(countFormat.format(githubRepo.forksCount)),
                  ),
                  const Gap(8),
                  TextButton.icon(
                    onPressed: () =>
                        _launchURL(context, githubRepo.issuesHtmlUrl),
                    icon: const Icon(Icons.error),
                    label: Text(countFormat.format(githubRepo.openIssuesCount)),
                  ),
                ],
              ),
            ),
            const Gap(32),
            SectionTitle(
              title: context.l10n.githubRepoLanguage,
            ),
            Text(
              githubRepo.language ?? context.l10n.githubRepoDescriptionEmpty,
              style: githubRepo.language == null
                  ? TextStyle(
                      color: Theme.of(context).disabledColor,
                    )
                  : null,
            ),
            const Gap(16),
            SectionTitle(title: context.l10n.githubRepoLicense),
            Text(
              githubRepo.licenseName ?? context.l10n.githubRepoLicense,
            ),
            const Gap(16),
            SectionTitle(title: context.l10n.githubRepoUpdatedAt),
            Text(
              updatedAtFormatter.format(githubRepo.updatedAt),
            ),
            const Gap(16),
            // トピックがある場合のみ表示
            if (githubRepo.topics.isNotEmpty)
              SectionTitle(title: context.l10n.githubRepoTopics),
            // Wrapを使ってさまざまな端末で見たときに、トピックが折り返されるようにしている
            Wrap(
              spacing: 8,
              children: githubRepo.topics
                  .map(
                    (topic) => Chip(
                      label: Text(topic),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  /// URLを開く
  void _launchURL(BuildContext context, String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Could not launch $url'),
          ),
        );
      }
    }
  }
}

/// セクションのタイトル
/// 他でも使うならwidgetsに移動する
class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        title,
        style: context.textTheme.titleMedium,
      ),
    );
  }
}
