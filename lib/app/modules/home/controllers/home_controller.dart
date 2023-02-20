import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_dealer/app/modules/home/views/mycart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  GetStorage _getStorage = GetStorage('app_storage');

  final count = 0.obs;
  var isLoading = false.obs;
  var isFetching = false.obs;
  var user_id;

  var allList;

  @override
  void onInit() {
    user_id = _getStorage.read("user_id");
    getData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  Future<void> saveData(String name, String price, String quantity) async {
    isLoading.value = true;

    try {
      await FirebaseFirestore.instance.collection('product').add({
        "id": user_id.toString(),
        "productName": name,
        "productPrice": price,
        "quantity": quantity
      });
      isLoading.value = false;
      Get.snackbar(
        "Status",
        "Your data has been saved",
        colorText: Colors.white,
        backgroundColor: Colors.blueGrey,
        snackPosition: SnackPosition.BOTTOM,
      );

      Get.to(() => MyNewCartView());
    } catch (e) {
      isLoading.value = false;
      Get.snackbar(
        "Error",
        "Something went wrong ..... try again",
        colorText: Colors.white,
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  Future<void> getData() async {
    isFetching.value = true;
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("product")
        .where('id', isEqualTo: user_id.toString())
        .get();

    allList = querySnapshot.docs.map((doc) => doc.data()).toList();

    isFetching.value = false;

    print("ressssssssssssss" + allList.toString());
  }
}
