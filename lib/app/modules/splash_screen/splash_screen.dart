import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lottie/lottie.dart';

import '../../routes/app_pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;

    Timer(Duration(milliseconds: 3000), () {

      if (FirebaseAuth.instance!.currentUser != null) {
        GetStorage _getStorage = GetStorage('app_storage');
        _getStorage.write("user_id",FirebaseAuth.instance!.currentUser!.uid.toString());
        Get.offNamed(Routes.BASE);
      } else {
        Get.offNamed(Routes.SIGN_IN);
      }


    });
    return SafeArea(
      child: Scaffold(
        body: Container(
              child: Center(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset("assets/files/delivery-box.json",
                      height: screenHeigth * 0.15,
                      width: screenHeigth * 0.15,),
                    SizedBox(height: screenHeigth * 0.030,),
                    Text("E-Dealer",style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.blueGrey
                    ),)
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
