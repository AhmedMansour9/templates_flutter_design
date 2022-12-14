import 'package:webview_flutter/data/model/response/language_model.dart';
import 'package:webview_flutter/utill/images.dart';

class AppConstants {

  static const String APP_NAME = 'web viwer';


  static const String BASE_URL = 'https://camelclub.maintenance.camelclub.gov.sa/app/';
  static const String CONFIG_URI = '';
  static const String CATEGORY_URI = 'api/CategoryComplanit';


  // Shared Key
  static const String THEME = 'theme';
  static const String TOKEN = 'token';
  static const String FIRST_TIME = 'first';
  static const String COUNTRY_CODE = 'country_code';
  static const String LANGUAGE_CODE = 'language_code';


  static List<LanguageModel> languages = [
    LanguageModel( languageName: 'English', countryCode: 'US', languageCode: 'en'),
    LanguageModel( languageName: 'Arabic', countryCode: 'SA', languageCode: 'ar'),

  ];


}
