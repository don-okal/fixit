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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Your Solution Is Here`
  String get YourSolutionIsHere {
    return Intl.message(
      'Your Solution Is Here',
      name: 'YourSolutionIsHere',
      desc: '',
      args: [],
    );
  }

  /// `Choose the membership type`
  String get chooseTheMembershipType {
    return Intl.message(
      'Choose the membership type',
      name: 'chooseTheMembershipType',
      desc: '',
      args: [],
    );
  }

  /// `Customer`
  String get customer {
    return Intl.message(
      'Customer',
      name: 'customer',
      desc: '',
      args: [],
    );
  }

  /// `Technical`
  String get technical {
    return Intl.message(
      'Technical',
      name: 'technical',
      desc: '',
      args: [],
    );
  }

  /// `Choose the membership type that suits you and join the fixit family.`
  String get chooseTheMembershipType2 {
    return Intl.message(
      'Choose the membership type that suits you and join the fixit family.',
      name: 'chooseTheMembershipType2',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Dont delete us🥺`
  String get action {
    return Intl.message(
      'Dont delete us🥺',
      name: 'action',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get email {
    return Intl.message(
      'E-mail',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get rememberMe {
    return Intl.message(
      'Remember me',
      name: 'rememberMe',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `create a new account`
  String get createAccount {
    return Intl.message(
      'create a new account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Google`
  String get continueWithGoogle {
    return Intl.message(
      'Continue with Google',
      name: 'continueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Facebook`
  String get continueWithFacebook {
    return Intl.message(
      'Continue with Facebook',
      name: 'continueWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Apple`
  String get continueWithApple {
    return Intl.message(
      'Continue with Apple',
      name: 'continueWithApple',
      desc: '',
      args: [],
    );
  }

  /// `this field is required`
  String get thisFieldIsRequired {
    return Intl.message(
      'this field is required',
      name: 'thisFieldIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get pleaseEnterValidEmail {
    return Intl.message(
      'Please enter a valid email',
      name: 'pleaseEnterValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address`
  String get enterYourEmailAddress {
    return Intl.message(
      'Enter your email address',
      name: 'enterYourEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Enter your New Password`
  String get enterYourNewPassword {
    return Intl.message(
      'Enter your New Password',
      name: 'enterYourNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Create new password`
  String get createNewPassword {
    return Intl.message(
      'Create new password',
      name: 'createNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter the identification code sent to the email`
  String get enterOtpCode {
    return Intl.message(
      'Enter the identification code sent to the email',
      name: 'enterOtpCode',
      desc: '',
      args: [],
    );
  }

  /// `The code will be resent after`
  String get codeTimer {
    return Intl.message(
      'The code will be resent after',
      name: 'codeTimer',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `The password has been changed successfully`
  String get thePasswordHasBeenChangedSuccessfully {
    return Intl.message(
      'The password has been changed successfully',
      name: 'thePasswordHasBeenChangedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `You can browse the application now with the latest offers and discounts`
  String get youCanBrowseTheApplicationNowWithTheLatestOffersAndDiscounts {
    return Intl.message(
      'You can browse the application now with the latest offers and discounts',
      name: 'youCanBrowseTheApplicationNowWithTheLatestOffersAndDiscounts',
      desc: '',
      args: [],
    );
  }

  /// `Start Now`
  String get startNow {
    return Intl.message(
      'Start Now',
      name: 'startNow',
      desc: '',
      args: [],
    );
  }

  /// `Enter the required data below`
  String get enterTheRequiredDataBelow {
    return Intl.message(
      'Enter the required data below',
      name: 'enterTheRequiredDataBelow',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name here`
  String get enterYourNameHere {
    return Intl.message(
      'Enter your name here',
      name: 'enterYourNameHere',
      desc: '',
      args: [],
    );
  }

  /// `Account successfully created`
  String get accountSuccessfullyCreated {
    return Intl.message(
      'Account successfully created',
      name: 'accountSuccessfullyCreated',
      desc: '',
      args: [],
    );
  }

  /// `Enter the craft (profession)`
  String get enterTheCraftProfession {
    return Intl.message(
      'Enter the craft (profession)',
      name: 'enterTheCraftProfession',
      desc: '',
      args: [],
    );
  }

  /// `Enter your job here`
  String get enterYourJobHere {
    return Intl.message(
      'Enter your job here',
      name: 'enterYourJobHere',
      desc: '',
      args: [],
    );
  }

  /// `Front ID image`
  String get frontIdImage {
    return Intl.message(
      'Front ID image',
      name: 'frontIdImage',
      desc: '',
      args: [],
    );
  }

  /// `back ID image`
  String get backIdImage {
    return Intl.message(
      'back ID image',
      name: 'backIdImage',
      desc: '',
      args: [],
    );
  }

  /// `Skill certificate image`
  String get skillCertificateImage {
    return Intl.message(
      'Skill certificate image',
      name: 'skillCertificateImage',
      desc: '',
      args: [],
    );
  }

  /// `personal photo image`
  String get personalPhotoImage {
    return Intl.message(
      'personal photo image',
      name: 'personalPhotoImage',
      desc: '',
      args: [],
    );
  }

  /// `criminal record image`
  String get criminalRecordImage {
    return Intl.message(
      'criminal record image',
      name: 'criminalRecordImage',
      desc: '',
      args: [],
    );
  }

  /// `national id`
  String get nationalId {
    return Intl.message(
      'national id',
      name: 'nationalId',
      desc: '',
      args: [],
    );
  }

  /// `enter national id`
  String get enterNationalId {
    return Intl.message(
      'enter national id',
      name: 'enterNationalId',
      desc: '',
      args: [],
    );
  }

  /// ` + add image`
  String get addImage {
    return Intl.message(
      ' + add image',
      name: 'addImage',
      desc: '',
      args: [],
    );
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
