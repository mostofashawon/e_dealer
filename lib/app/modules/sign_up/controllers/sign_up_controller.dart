import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignUpController extends GetxController {
  //TODO: Implement SignUpController

  final count = 0.obs;
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

  void signupUser(
      String email, String password, String name) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      Get.snackbar(
        "Status",
        "Registration Successful",
        colorText: Colors.white,
        backgroundColor:Colors.red,
        snackPosition: SnackPosition.BOTTOM,

      );

      // await FirestoreServices.saveUser(name, email, userCredential.user!.uid);

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {

        Get.snackbar(
          "Error",
          "Weak Password",
          colorText: Colors.white,
          backgroundColor:Colors.red,
          snackPosition: SnackPosition.BOTTOM,

        );
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar(
          "Error",
          "Email already in use",
          colorText: Colors.white,
          backgroundColor:Colors.red,
          snackPosition: SnackPosition.BOTTOM,

        );
      }
    } catch (e) {
     print(e.toString());
    }
  }
}
