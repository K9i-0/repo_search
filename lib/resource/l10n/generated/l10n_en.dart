/// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: always_use_package_imports

import 'l10n.dart';

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Repo Search';

  @override
  String get dioErrorTypeCancel => 'Request to API server was cancelled';

  @override
  String get dioErrorTypeConnectTimeout => 'Connection timeout with API server';

  @override
  String get dioErrorTypeReceiveTimeout => 'Receive timeout in connection with API server';

  @override
  String dioErrorTypeResponse(String statusCode) {
    return 'Received invalid status code: $statusCode';
  }

  @override
  String get dioErrorTypeSendTimeout => 'Send timeout in connection with API server';

  @override
  String get dioErrorTypeUnknown => 'Unexpected error occurred';

  @override
  String get githubRepoDescription => 'Description';

  @override
  String get githubRepoDescriptionEmpty => 'No description';

  @override
  String get githubRepoFork => 'Fork';

  @override
  String get githubRepoFullName => 'Repository Name';

  @override
  String get githubRepoLanguage => 'Language';

  @override
  String get githubRepoLanguageEmpty => 'No language specified';

  @override
  String get githubRepoLicense => 'License';

  @override
  String get githubRepoLicenseEmpty => 'No license specified';

  @override
  String get githubRepoOpenIssues => 'Open Issues';

  @override
  String get githubRepoStar => 'Star';

  @override
  String get githubRepoTopics => 'Topics';

  @override
  String get githubRepoUpdatedAt => 'Updated at';

  @override
  String get githubRepoWatch => 'Watch';

  @override
  String repoUpdatedAt(String updatedAt) {
    return 'Updated at $updatedAt';
  }

  @override
  String get searchBarHint => 'search keywords';

  @override
  String get searchKeywordsEmpty => 'Please enter search keywords';

  @override
  String get searchResultEmpty => 'No results.\nPlease change the search keywords.';

  @override
  String get searchSettingsOrder => 'Order';

  @override
  String get searchSettingsOrderAsc => 'Ascending';

  @override
  String get searchSettingsOrderDesc => 'Descending';

  @override
  String get searchSettingsSort => 'Sort';

  @override
  String get searchSettingsSortBestMatch => 'Best match';

  @override
  String get searchSettingsSortForks => 'Forks count';

  @override
  String get searchSettingsSortHelpWantedIssues => 'Help wanted issues count';

  @override
  String get searchSettingsSortStars => 'Stars count';

  @override
  String get searchSettingsSortUpdated => 'Updated time';

  @override
  String get searchSettingsTitle => 'Search Settings';

  @override
  String get settingsTheme => 'Theme';

  @override
  String get settingsThemeDark => 'Dark';

  @override
  String get settingsThemeLight => 'Light';

  @override
  String get settingsThemeSystem => 'System default';

  @override
  String get settingsTitle => 'Settings';
}
