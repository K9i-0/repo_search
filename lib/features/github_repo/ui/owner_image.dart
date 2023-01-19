import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:repo_search/features/github_repo/model/github_repo.dart';

/// GithubRepoのオーナーのアイコンを表示するWidget
/// Heroアニメーション、画像キャッシュが実装される
class OwnerImage extends StatelessWidget {
  final GithubRepo githubRepo;
  final double? radius;

  const OwnerImage({
    required this.githubRepo,
    this.radius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: githubRepo,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Colors.transparent,
        backgroundImage: CachedNetworkImageProvider(
          githubRepo.ownerImageUrl,
        ),
      ),
    );
  }
}
