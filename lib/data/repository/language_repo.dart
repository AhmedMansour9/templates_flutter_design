import 'package:flutter/material.dart';
import 'package:webview_flutter/data/model/language_model.dart';
import 'package:webview_flutter/utill/app_constants.dart';

class LanguageRepo {
  List<LanguageModel> getAllLanguages({BuildContext? context}) {
    return AppConstants.languages;
  }
}
