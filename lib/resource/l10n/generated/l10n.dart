// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class L10n {
  L10n();

  static L10n? _current;

  static L10n get current {
    assert(_current != null,
        'No instance of L10n was loaded. Try to initialize the L10n delegate before accessing L10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<L10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = L10n();
      L10n._current = instance;

      return instance;
    });
  }

  static L10n of(BuildContext context) {
    final instance = L10n.maybeOf(context);
    assert(instance != null,
        'No instance of L10n present in the widget tree. Did you add L10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static L10n? maybeOf(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  /// `Repo Search`
  String get appTitle {
    return Intl.message(
      'Repo Search',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get githubRepoDescription {
    return Intl.message(
      'Description',
      name: 'githubRepoDescription',
      desc: '',
      args: [],
    );
  }

  /// `No description`
  String get githubRepoDescriptionEmpty {
    return Intl.message(
      'No description',
      name: 'githubRepoDescriptionEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Fork`
  String get githubRepoFork {
    return Intl.message(
      'Fork',
      name: 'githubRepoFork',
      desc: '',
      args: [],
    );
  }

  /// `Repository Name`
  String get githubRepoFullName {
    return Intl.message(
      'Repository Name',
      name: 'githubRepoFullName',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get githubRepoLanguage {
    return Intl.message(
      'Language',
      name: 'githubRepoLanguage',
      desc: '',
      args: [],
    );
  }

  /// `No language specified`
  String get githubRepoLanguageEmpty {
    return Intl.message(
      'No language specified',
      name: 'githubRepoLanguageEmpty',
      desc: '',
      args: [],
    );
  }

  /// `License`
  String get githubRepoLicense {
    return Intl.message(
      'License',
      name: 'githubRepoLicense',
      desc: '',
      args: [],
    );
  }

  /// `No license specified`
  String get githubRepoLicenseEmpty {
    return Intl.message(
      'No license specified',
      name: 'githubRepoLicenseEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Open Issues`
  String get githubRepoOpenIssues {
    return Intl.message(
      'Open Issues',
      name: 'githubRepoOpenIssues',
      desc: '',
      args: [],
    );
  }

  /// `Star`
  String get githubRepoStar {
    return Intl.message(
      'Star',
      name: 'githubRepoStar',
      desc: '',
      args: [],
    );
  }

  /// `Topics`
  String get githubRepoTopics {
    return Intl.message(
      'Topics',
      name: 'githubRepoTopics',
      desc: '',
      args: [],
    );
  }

  /// `Updated at`
  String get githubRepoUpdatedAt {
    return Intl.message(
      'Updated at',
      name: 'githubRepoUpdatedAt',
      desc: '',
      args: [],
    );
  }

  /// `Watch`
  String get githubRepoWatch {
    return Intl.message(
      'Watch',
      name: 'githubRepoWatch',
      desc: '',
      args: [],
    );
  }

  /// `Updated at {updatedAt}`
  String repoUpdatedAt(Object updatedAt) {
    return Intl.message(
      'Updated at $updatedAt',
      name: 'repoUpdatedAt',
      desc: '',
      args: [updatedAt],
    );
  }

  /// `search keywords`
  String get searchBarHint {
    return Intl.message(
      'search keywords',
      name: 'searchBarHint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter search keywords`
  String get searchKeywordsEmpty {
    return Intl.message(
      'Please enter search keywords',
      name: 'searchKeywordsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `No results.\nPlease change the search keywords.`
  String get searchResultEmpty {
    return Intl.message(
      'No results.\nPlease change the search keywords.',
      name: 'searchResultEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get searchSettingsOrder {
    return Intl.message(
      'Order',
      name: 'searchSettingsOrder',
      desc: '',
      args: [],
    );
  }

  /// `Ascending`
  String get searchSettingsOrderAsc {
    return Intl.message(
      'Ascending',
      name: 'searchSettingsOrderAsc',
      desc: '',
      args: [],
    );
  }

  /// `Descending`
  String get searchSettingsOrderDesc {
    return Intl.message(
      'Descending',
      name: 'searchSettingsOrderDesc',
      desc: '',
      args: [],
    );
  }

  /// `Sort`
  String get searchSettingsSort {
    return Intl.message(
      'Sort',
      name: 'searchSettingsSort',
      desc: '',
      args: [],
    );
  }

  /// `Forks count`
  String get searchSettingsSortForks {
    return Intl.message(
      'Forks count',
      name: 'searchSettingsSortForks',
      desc: '',
      args: [],
    );
  }

  /// `Help wanted issues count`
  String get searchSettingsSortHelpWantedIssues {
    return Intl.message(
      'Help wanted issues count',
      name: 'searchSettingsSortHelpWantedIssues',
      desc: '',
      args: [],
    );
  }

  /// `Stars count`
  String get searchSettingsSortStars {
    return Intl.message(
      'Stars count',
      name: 'searchSettingsSortStars',
      desc: '',
      args: [],
    );
  }

  /// `Updated time`
  String get searchSettingsSortUpdated {
    return Intl.message(
      'Updated time',
      name: 'searchSettingsSortUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Search Settings`
  String get searchSettingsTitle {
    return Intl.message(
      'Search Settings',
      name: 'searchSettingsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get settingsTheme {
    return Intl.message(
      'Theme',
      name: 'settingsTheme',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get settingsThemeDark {
    return Intl.message(
      'Dark',
      name: 'settingsThemeDark',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get settingsThemeLight {
    return Intl.message(
      'Light',
      name: 'settingsThemeLight',
      desc: '',
      args: [],
    );
  }

  /// `System default`
  String get settingsThemeSystem {
    return Intl.message(
      'System default',
      name: 'settingsThemeSystem',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settingsTitle {
    return Intl.message(
      'Settings',
      name: 'settingsTitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<L10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ja'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<L10n> load(Locale locale) => L10n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
