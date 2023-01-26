import 'package:flutter/material.dart';
import 'package:webview_flutter/data/model/api_response.dart';
import 'package:webview_flutter/data/model/config_model.dart';
import 'package:webview_flutter/data/repository/splash_repo.dart';
import 'package:webview_flutter/utill/app_constants.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import '../view/base/custom_snackbar.dart';

class SplashProvider extends ChangeNotifier {
  final SplashRepo splashRepo;
  final SharedPreferences sharedPreferences;

  SplashProvider({required this.splashRepo, required this.sharedPreferences});

  ConfigModel? _configModel;
  BaseUrls? _baseUrls;
  DateTime _currentTime = DateTime.now();

  ConfigModel? get configModel => _configModel;

  BaseUrls? get baseUrls => _baseUrls;

  DateTime get currentTime => _currentTime;

  Future<bool> initConfig(GlobalKey<ScaffoldMessengerState> globalKey) async {
    ApiResponse apiResponse = await splashRepo.getConfig();
    bool isSuccess;
    if (apiResponse.response != null &&
        apiResponse.response?.statusCode == 200) {
      _configModel = ConfigModel.fromJson(apiResponse.response?.data);
      _baseUrls = ConfigModel.fromJson(apiResponse.response?.data).baseUrls!;
      isSuccess = true;
      notifyListeners();
    } else {
      isSuccess = false;
      String _error;
      if (apiResponse.message is String) {
        _error = apiResponse.message;
      } else {
        _error = apiResponse.message.errors[0].message;
      }
      print(_error);
      // showCustomSnackBar(apiResponse.error.toString(),globalKey.currentState!.context);

    }
    return isSuccess;
  }

  Future<bool> initSharedData() {
    return splashRepo.initSharedData();
  }



}
