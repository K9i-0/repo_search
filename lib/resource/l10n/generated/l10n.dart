/// GENERATED CODE - DO NOT MODIFY BY HAND
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'l10n_en.dart';
import 'l10n_ja.dart';

/// Callers can lookup localized strings with an instance of L10n
/// returned by `L10n.of(context)`.
///
/// Applications need to include `L10n.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/l10n.dart';
///
/// return MaterialApp(
///   localizationsDelegates: L10n.localizationsDelegates,
///   supportedLocales: L10n.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the L10n.supportedLocales
/// property.
abstract class L10n {
  L10n(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static L10n of(BuildContext context) {
    return Localizations.of<L10n>(context, L10n)!;
  }

  static const LocalizationsDelegate<L10n> delegate = _L10nDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ja')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Repo Search'**
  String get appTitle;

  /// No description provided for @dioErrorTypeCancel.
  ///
  /// In en, this message translates to:
  /// **'Request to API server was cancelled'**
  String get dioErrorTypeCancel;

  /// No description provided for @dioErrorTypeConnectTimeout.
  ///
  /// In en, this message translates to:
  /// **'Connection timeout with API server'**
  String get dioErrorTypeConnectTimeout;

  /// No description provided for @dioErrorTypeReceiveTimeout.
  ///
  /// In en, this message translates to:
  /// **'Receive timeout in connection with API server'**
  String get dioErrorTypeReceiveTimeout;

  /// No description provided for @dioErrorTypeResponse.
  ///
  /// In en, this message translates to:
  /// **'Received invalid status code: {statusCode}'**
  String dioErrorTypeResponse(Object statusCode);

  /// No description provided for @dioErrorTypeSendTimeout.
  ///
  /// In en, this message translates to:
  /// **'Send timeout in connection with API server'**
  String get dioErrorTypeSendTimeout;

  /// No description provided for @dioErrorTypeUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unexpected error occurred'**
  String get dioErrorTypeUnknown;

  /// No description provided for @githubRepoDescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get githubRepoDescription;

  /// No description provided for @githubRepoDescriptionEmpty.
  ///
  /// In en, this message translates to:
  /// **'No description'**
  String get githubRepoDescriptionEmpty;

  /// No description provided for @githubRepoFork.
  ///
  /// In en, this message translates to:
  /// **'Fork'**
  String get githubRepoFork;

  /// No description provided for @githubRepoFullName.
  ///
  /// In en, this message translates to:
  /// **'Repository Name'**
  String get githubRepoFullName;

  /// No description provided for @githubRepoLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get githubRepoLanguage;

  /// No description provided for @githubRepoLanguageEmpty.
  ///
  /// In en, this message translates to:
  /// **'No language specified'**
  String get githubRepoLanguageEmpty;

  /// No description provided for @githubRepoLicense.
  ///
  /// In en, this message translates to:
  /// **'License'**
  String get githubRepoLicense;

  /// No description provided for @githubRepoLicenseEmpty.
  ///
  /// In en, this message translates to:
  /// **'No license specified'**
  String get githubRepoLicenseEmpty;

  /// No description provided for @githubRepoOpenIssues.
  ///
  /// In en, this message translates to:
  /// **'Open Issues'**
  String get githubRepoOpenIssues;

  /// No description provided for @githubRepoStar.
  ///
  /// In en, this message translates to:
  /// **'Star'**
  String get githubRepoStar;

  /// No description provided for @githubRepoTopics.
  ///
  /// In en, this message translates to:
  /// **'Topics'**
  String get githubRepoTopics;

  /// No description provided for @githubRepoUpdatedAt.
  ///
  /// In en, this message translates to:
  /// **'Updated at'**
  String get githubRepoUpdatedAt;

  /// No description provided for @githubRepoWatch.
  ///
  /// In en, this message translates to:
  /// **'Watch'**
  String get githubRepoWatch;

  /// No description provided for @repoUpdatedAt.
  ///
  /// In en, this message translates to:
  /// **'Updated at {updatedAt}'**
  String repoUpdatedAt(String updatedAt);

  /// No description provided for @searchBarHint.
  ///
  /// In en, this message translates to:
  /// **'search keywords'**
  String get searchBarHint;

  /// No description provided for @searchKeywordsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Please enter search keywords'**
  String get searchKeywordsEmpty;

  /// No description provided for @searchResultEmpty.
  ///
  /// In en, this message translates to:
  /// **'No results.\nPlease change the search keywords.'**
  String get searchResultEmpty;

  /// No description provided for @searchSettingsOrder.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get searchSettingsOrder;

  /// No description provided for @searchSettingsOrderAsc.
  ///
  /// In en, this message translates to:
  /// **'Ascending'**
  String get searchSettingsOrderAsc;

  /// No description provided for @searchSettingsOrderDesc.
  ///
  /// In en, this message translates to:
  /// **'Descending'**
  String get searchSettingsOrderDesc;

  /// No description provided for @searchSettingsSort.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get searchSettingsSort;

  /// No description provided for @searchSettingsSortBestMatch.
  ///
  /// In en, this message translates to:
  /// **'Best match'**
  String get searchSettingsSortBestMatch;

  /// No description provided for @searchSettingsSortForks.
  ///
  /// In en, this message translates to:
  /// **'Forks count'**
  String get searchSettingsSortForks;

  /// No description provided for @searchSettingsSortHelpWantedIssues.
  ///
  /// In en, this message translates to:
  /// **'Help wanted issues count'**
  String get searchSettingsSortHelpWantedIssues;

  /// No description provided for @searchSettingsSortStars.
  ///
  /// In en, this message translates to:
  /// **'Stars count'**
  String get searchSettingsSortStars;

  /// No description provided for @searchSettingsSortUpdated.
  ///
  /// In en, this message translates to:
  /// **'Updated time'**
  String get searchSettingsSortUpdated;

  /// No description provided for @searchSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Search Settings'**
  String get searchSettingsTitle;

  /// No description provided for @settingsTheme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsTheme;

  /// No description provided for @settingsThemeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settingsThemeDark;

  /// No description provided for @settingsThemeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settingsThemeLight;

  /// No description provided for @settingsThemeSystem.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get settingsThemeSystem;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;
}

class _L10nDelegate extends LocalizationsDelegate<L10n> {
  const _L10nDelegate();

  @override
  Future<L10n> load(Locale locale) {
    return SynchronousFuture<L10n>(lookupL10n(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ja'].contains(locale.languageCode);

  @override
  bool shouldReload(_L10nDelegate old) => false;
}

L10n lookupL10n(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return L10nEn();
    case 'ja': return L10nJa();
  }

  throw FlutterError(
    'L10n.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
