import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  // ========= CONTROLLERS ========= //

  final TextEditingController pinController = TextEditingController();

  // ========= VARIABLES ========= //

  RxString firebaseToken = ''.obs;
  bool allowLogin = false;
  RxBool obscureText = true.obs;

  // ========== STATES ========== //

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  // ========== UI Functions ========== //

  void clearAllControllers() {
    // email.clear();
    // password.clear();
    // pin.clear();
    // resetPasswordEmail.clear();
  }

  void clearAllControllersExceptEmail() {
    // password.clear();
    // pin.clear();
    // resetPasswordEmail.clear();
  }

// ========== APIs Functions ========== //
}
