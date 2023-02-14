import 'package:e_dealer/app/modules/sign_up/view/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/sign_in_controller.dart';

class SignInScreen extends StatelessWidget {
  // const SignInScreen({super.key});

  final SignInController controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "E-Dealer ",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.blueGrey,
              ),
            ),
            Text(
              "Management ",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: Image.asset("assets/images/dealer.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  signin_field(
                    "User Mail",
                    Icon(
                      Icons.login,
                    ),
                  ),
                  signin_field(
                    "Password",
                    Icon(
                      Icons.password,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      controller.signInUser();
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 30,
                        right: 30,
                        top: 30,
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey,
                      ),
                      child: Center(
                        child: Text(
                          "Log IN",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: screenHeight * 0.030,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not Registered ? ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => SignUpScreen());
                        },
                        child: Text(
                          "Sign up Now",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Obx(() => controller.isLoading == true ?
              Align(
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              ) :  Visibility(
                  visible: false,
                  child: Text(controller.count.toString())))
            ],
          )

        ),
      ),
    );
  }

  Widget signin_field(hintTxt, iconsymble) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
      ),
      child: TextFormField(
        obscureText: hintTxt == 'Password' ? true : false,
        decoration: InputDecoration(
          prefixIcon: iconsymble,
          border: InputBorder.none,
          hintText: hintTxt,
        ),
        onChanged: (value){
          hintTxt == "User Mail" ?
              controller.email.value = value.toString() :
              controller.password.value = value.toString();
        },
      ),
    );
  }
}
