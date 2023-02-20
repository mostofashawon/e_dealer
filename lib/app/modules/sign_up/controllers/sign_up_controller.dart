import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_dealer/app/routes/app_pages.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:io';

import 'package:get_storage/get_storage.dart';


class SignUpController extends GetxController {
  //TODO: Implement SignUpController

  final count = 0.obs;
  var email = "".obs;
  var password = "".obs;
  var name = "".obs;
  var phone = "".obs;
  var companyName = "".obs;
  var tradeId = "".obs;
  var nid = "".obs;
  var isLoading = false.obs;

  File? tradeLicenceFile;

  var tradeFileName = ''.obs;

  File? nidFile;

  var nidFileName = ''.obs;

  File? image;

  var imageName = ''.obs;

  var storage = FirebaseStorage.instance;

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
    isLoading.value = true;
    try {

      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email.value, password: password.value);

      await saveUserInfo(userCredential.user!.uid);

      GetStorage _getStorage = GetStorage('app_storage');

      _getStorage.write("user_id",userCredential.user!.uid.toString());

      isLoading.value = false;
      Get.snackbar(
        "Status",
        "Registration Successful",
        colorText: Colors.white,
        backgroundColor:Colors.blueGrey,
        snackPosition: SnackPosition.BOTTOM,

      );

      Get.offNamed(Routes.SIGN_IN);


    } on FirebaseAuthException catch (e) {
      isLoading.value = false;
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

  Future<void> saveUserInfo(String id) async {
    TaskSnapshot tradeSnapShot = await storage.ref(tradeFileName+'trade_info').putFile(tradeLicenceFile!);
    TaskSnapshot nidSnapShot = await storage.ref(nidFileName+'nid_info').putFile(nidFile!!);
    TaskSnapshot imageSnapShot = await storage.ref(imageName+'image_info').putFile(image!);
    final String tradeUrl = await tradeSnapShot.ref.getDownloadURL();
    final String nidUrl = await nidSnapShot.ref.getDownloadURL();
    final String imageUrl = await imageSnapShot.ref.getDownloadURL();

    await FirebaseFirestore.instance.collection('user_data').add({
      "id":id,
      "name": name.toString(),
      "phone": phone.toString(),
      "email": email.toString(),
      "password": password.toString(),
      "companyName": companyName.toString(),
      "tradeid": tradeId.toString(),
      "nid": nid.toString(),
      "tradeFileUrl": tradeUrl.toString(),
      "nidFileUrl": nidUrl.toString(),
      "imageUrl": imageUrl.toString()

    });

  }
}
