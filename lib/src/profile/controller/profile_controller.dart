import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  // ========= CONTROLLERS ========= //
  final editNameController = TextEditingController();
  final editEmailController = TextEditingController();
  final editPhoneController = TextEditingController();
  final editPasswordController = TextEditingController();

  // ========= VARIABLES ========= //
  RxBool readOnlyName = true.obs;
  RxBool readOnlyEmail = true.obs;
  RxBool readOnlyPhone = true.obs;
  RxBool readOnlyPassword = true.obs;

  // ========== STATES ========== //

  @override
  void onInit() {
    super.onInit();
    editNameController.text = 'John Doe';
    editEmailController.text = 'johndoe@cafe';
    editPhoneController.text = '+91 1234567890';
    editPasswordController.text = 'password';
  }

  @override
  void onClose() {
    super.onClose();
    editNameController.dispose();
    editEmailController.dispose();
    editPhoneController.dispose();
    editPasswordController.dispose();
  }

  // ========== UI FUNCTIONS ========== //

  // ========== APIs FUNCTIONS ========== //
}
