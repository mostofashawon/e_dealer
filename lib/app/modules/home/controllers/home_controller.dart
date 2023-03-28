import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_dealer/app/modules/base/view/baseview.dart';
import 'package:e_dealer/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class HomeController extends GetxController {
  //TODO: Implement HomeController
  //TODO: Implement HomeController


  GetStorage _getStorage = GetStorage('app_storage');

  final count = 0.obs;
  var isLoading = false.obs;
  var isFetching = false.obs;
  var  user_id;
  var isUploading = false.obs;
  RxInt totalPrice = 0.obs;

  var points1=<String>[].obs;

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

  Future<void> saveData(String name , String price,String quantity) async {
    

    isLoading.value = true;

    try{
      await FirebaseFirestore.instance.collection('product').add({
        "id":user_id.toString(),
        "productName":name,
        "productPrice": price,
        "quantity":quantity
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

  Future<void> getData() async {
    isFetching.value = true;
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection("product").where('id', isEqualTo: user_id.toString()).get();

    allList = querySnapshot.docs.map((doc) => doc.data()).toList();
    
    for(int i = 0; i< allList.length; i++){
      totalPrice = totalPrice + int.parse(allList[i]["productPrice"]);
    }

    isFetching.value = false;

   
  }

  List<String> toList1() {

    allList.forEach((item) {
      points1.add(item.toString());
    });

    return points1.toList();
  }
  
  
  Future<void> saveCartData() async {
    isUploading.value = true;

    try{
      await FirebaseFirestore.instance.collection('my_cart').add({
        "cart":toList1(),
      });
      isUploading.value = false;
      Get.snackbar(
        "Status",
        "Your data has been saved",
        colorText: Colors.white,
        backgroundColor:Colors.blueGrey,
        snackPosition: SnackPosition.BOTTOM,
      );

      Get.to( () => BaseView());
    }
    catch(e){
      isUploading.value = false;
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
