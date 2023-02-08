import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SignInController extends GetxController {
  //TODO: Implement SignInController

  final count = 0.obs;
  var email = "".obs;
  var password = "".obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  Future<void> signInUser() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email.value, password: password.value);

      Get.offNamed(Routes.HOME);

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {

        Get.snackbar(
          "Error",
          "User Not Found",
          colorText: Colors.white,
          backgroundColor:Colors.red,
          snackPosition: SnackPosition.BOTTOM,

        );
      } else if (e.code == 'wrong-password') {

        Get.snackbar(
          "Error",
          "Wrong Password",
          colorText: Colors.white,
          backgroundColor:Colors.red,
          snackPosition: SnackPosition.BOTTOM,

        );
      }
    }
  }
}
