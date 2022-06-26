import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommandController extends GetxController {
  final RxString _results = ''.obs;
  final RxBool _loading = false.obs;

  String get results => _results.value;

  set results(String val) => _results.value = val;

  bool get isLoading => _loading.value;

  set isLoading(bool val) => _loading.value = val;
  @override
  void onInit() {
    // TODO: implement onInit
    ever(_results, notify);
    super.onInit();
  }

  // TODO: replace this later on
  void notify(String message) {
    Get.snackbar(
      'Notification',
      message,
      dismissDirection: DismissDirection.horizontal,
    );
  }
}
