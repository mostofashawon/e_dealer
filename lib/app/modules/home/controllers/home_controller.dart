import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  var isLoading = false.obs;
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

  Future<void> saveData(String name , String price) async {
    isLoading.value = true;

    try{
      await FirebaseFirestore.instance.collection('product').add({
        "productName":name,
        "productPrice": price,
      });
      isLoading.value = false;
      Get.snackbar(
        "Status",
        "Your data has been saved",
        colorText: Colors.white,
        backgroundColor:Colors.blueGrey,
        snackPosition: SnackPosition.BOTTOM,

      );
    }
    catch(e){
      isLoading.value = false;
      Get.snackbar(
        "Error",
        "Something went wrong ..... try again",
        colorText: Colors.white,
        backgroundColor:Colors.red,
        snackPosition: SnackPosition.BOTTOM,

      );
    }

  }
}
