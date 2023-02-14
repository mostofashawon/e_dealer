import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {

    var screenheight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('E-Dealer',style: TextStyle(
          color: Colors.white,
        ),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Scaffold(
          body:Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(
                        top: screenheight * 0.025,
                        left: screenheight * 0.010,
                        right: screenWidth * 0.015
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: GestureDetector(
                        onTap: () async {
                        },
                        child:
                        CircleAvatar(
                            child :
                            Image.asset("assets/images/user.png",
                              fit: BoxFit.fill,),
                          radius: 30.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // width: double.maxFinite,
                    child:
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child:
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: screenheight * 0.020,),
                                Container(
                                  // width: double.maxFinite,
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Rakib Hasan Isalam',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blueGrey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      ),
                                    ],
                                  ),
                                ),

                                Text(
                                  'Licence No. 83746678273',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                        right: screenWidth * 0.030,
                        top: screenheight * 0.020,

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Requested '),
                          ],
                        ),   Row(
                          children: [
                            Text('Accepted'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Return '),
                          ],
                        ),
                        Row(
                          children: [
                            Text('In Stock '),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: screenWidth * 0.030,
                      top: screenheight * 0.020,

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text('30')
                          ],
                        ),   Row(
                          children: [
                            Text('05')
                          ],
                        ),
                        Row(
                          children: [
                            Text('02')
                          ],
                        ),
                        Row(
                          children: [
                            Text('40')
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(
                  top: screenheight * 0.020,
                  left: 12,
                  right: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent',
                      style: TextStyle(
                          fontSize: screenheight * 0.020,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(
                  top: 5,
                  left: 15,
                  right: 15,
                ),
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (context,index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 3),
                    decoration: BoxDecoration(
                      color: Color(0xffF8F8F8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "বায়ুদূষণ (নিয়ন্ত্রণ) বিধিমালা, ২০২২",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff777777),
                          ),
                        ],
                      ),
                    ),
                  );
                })
              ),
              Padding(
                padding:  EdgeInsets.only(
                  top: screenheight * 0.020,
                  left: 12,
                  right: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Browse Category',
                      style: TextStyle(
                          fontSize: screenheight * 0.020,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenheight * 0.020,),
              Expanded(
                child: Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 18,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.category_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                              Text(
                                "Bashundhara",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
