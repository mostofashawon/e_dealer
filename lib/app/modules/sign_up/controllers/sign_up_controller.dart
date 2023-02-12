import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:io';


class SignUpController extends GetxController {
  //TODO: Implement SignUpController

  final count = 0.obs;
  var email = "".obs;
  var password = "".obs;
  var name = "".obs;
  var isLoading = false;

  File? tradeLicenceFile;

  var tradeFileName = ''.obs;

  File? nidFile;

  var nidFileName = ''.obs;

  File? image;

  var imageName = ''.obs;

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

  Future<void> signUpUser() async {
    try {
      isLoading = true;
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email.value, password: password.value);

      isLoading = false;
      Get.snackbar(
        "Status",
        "Registration Successful",
        colorText: Colors.white,
        backgroundColor:Colors.red,
        snackPosition: SnackPosition.BOTTOM,

      );

      // await FirestoreServices.saveUser(name, email, userCredential.user!.uid);

    } on FirebaseAuthException catch (e) {
      isLoading = false;
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


  Future<void> getFile(String type) async {

    final pickedFile = await FilePicker.platform.pickFiles();

    if(pickedFile != null){
       if(type == "trade"){
         tradeLicenceFile = File(pickedFile.files.single.path.toString());
         tradeFileName.value = pickedFile.files.single.name.toString();
       }
       else if(type == "nid"){
         nidFile = File(pickedFile.files.single.path.toString());
         nidFileName.value = pickedFile.files.single.name.toString();
       }
       else {
         image = File(pickedFile.files.single.path.toString());
         imageName.value = pickedFile.files.single.name.toString();
       }


    }
  }
}
