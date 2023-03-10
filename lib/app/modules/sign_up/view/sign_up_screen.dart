import 'package:e_dealer/app/modules/sign_in/view/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class SignUpScreen extends StatelessWidget {
  // const SignUpScreen({super.key});

  final SignUpController controller = Get.put(SignUpController());

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
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            "Dealership Registration",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: screenHeight * 0.025,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                        // color: Colors.red,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            regi_field(
                              "Your Name",
                              Icon(
                                Icons.person,
                              ),
                            ),
                            regi_field(
                              "Phone No",
                              Icon(
                                Icons.call,
                              ),
                            ),
                            regi_field(
                              "Email Address",
                              Icon(
                                Icons.email,
                              ),
                            ),
                            regi_field(
                              "Password",
                              Icon(
                                Icons.call,
                              ),
                            ),
                            regi_field(
                              "Company Name",
                              Icon(
                                Icons.business_outlined,
                              ),
                            ),
                            regi_field(
                              "Trade License No",
                              Icon(
                                Icons.call,
                              ),
                            ),
                            regi_field(
                              "National ID No",
                              Icon(
                                Icons.person,
                              ),
                            ),
                            upload_file(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              uploadTitle: 'Upload Trade License:',
                            ),
                            upload_file(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              uploadTitle: 'Upload Nid Card:',
                            ),
                            upload_file(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight,
                              uploadTitle: 'Upload Photo:',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await controller.signUpUser();
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Center(
                        child: Text(
                          "Submit Data",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: screenHeight * 0.030),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Allready Registered ? ",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => SignInScreen());
                        },
                        child: Text(
                          "Sign in Here",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
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
          ),
        ));
  }

  Widget regi_field(hintTxt, iconsymble) {
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
        keyboardType: hintTxt == 'Email Address' ?
            TextInputType.emailAddress :
                  hintTxt == 'Phone No' ?
              TextInputType.phone :
                  hintTxt == 'Password' ? TextInputType.text :
          hintTxt == 'Your Name' ? TextInputType.text :
          hintTxt == 'Company Name' ? TextInputType.text :
              TextInputType.number
        ,
        decoration: InputDecoration(
          prefixIcon: iconsymble,
          border: InputBorder.none,
          hintText: hintTxt,
        ),
        onChanged: (value){
          hintTxt == 'Email Address' ?
              controller.email.value = value.toString() :
              hintTxt == 'Password' ?
                  controller.password.value = value.toString() :
                  hintTxt == 'Your Name' ?
                  controller.name.value = value.toString() :
                  hintTxt == 'Phone No' ?
                      controller.phone.value = value.toString() :
                  hintTxt == 'Company Name' ?
                  controller.companyName.value = value.toString() :
                  hintTxt == 'Trade License No' ?
                  controller.tradeId.value = value.toString()  :
                      controller.nid.value = value.toString();

        },
      ),
    );
  }
}

class upload_file extends StatelessWidget {
   upload_file({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.uploadTitle,
  });

  final double screenWidth;
  final double screenHeight;
  final String uploadTitle;

  final SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        uploadTitle == 'Upload Trade License:' ?
          await  controller.getFile('trade') :
        uploadTitle == 'Upload Nid Card:' ?
        await controller.getFile('nid') :
        await controller.getFile('image') ;
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 60,
        width: screenWidth,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            children: [
              Obx(() => Text(
                uploadTitle == 'Upload Trade License:' ?
                controller.tradeFileName == "" ? 'Upload Trade License:' :
                controller.tradeFileName.toString() :   uploadTitle == 'Upload Nid Card:' ?
                controller.nidFileName == "" ? 'Upload Nid Card:' :
                controller.nidFileName.toString() : controller.imageName == "" ?
                'Upload Photo:' : controller.imageName.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: screenHeight * 0.020,
                ),
              )),
              Spacer(),
              Icon(
                Icons.upload_file,
                color: Colors.white,
                size: screenHeight * 0.030,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
