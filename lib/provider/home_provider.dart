import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/data/model/response/base/api_response.dart';
import 'package:webview_flutter/data/model/response/language_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/helper/api_checker.dart';
import 'package:intl/intl.dart';
import '../utill/app_constants.dart';
import 'package:http/http.dart' as http;

import '../utill/routes.dart';
import '../view/base/custom_snackbar.dart';

class HomeProvider with ChangeNotifier {
  // final CategoryRepo categoryRepo;
  // final SharedPreferences sharedPreferences;
  //
  // HomeProvider({required this.categoryRepo, required this.sharedPreferences});
  //
  // String? fileUrl = null;


}
