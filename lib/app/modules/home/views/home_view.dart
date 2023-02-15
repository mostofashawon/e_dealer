import 'package:e_dealer/app/modules/products%20browse/views/products_view.dart';
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
        scrolledUnderElevation: 2,
        elevation: 0.0,
        backgroundColor: Colors.blueGrey,
        title: Text(
          'E-Dealer',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
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
          backgroundColor: Colors.blueGrey,
          body: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: screenheight * 0.025,
                          left: screenheight * 0.010,
                          right: screenWidth * 0.015),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: GestureDetector(
                          onTap: () async {},
                          child: CircleAvatar(
                            child: Image.asset(
                              "assets/images/user.png",
                              fit: BoxFit.fill,
                            ),
                            radius: 30.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // width: double.maxFinite,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: screenheight * 0.020,
                                  ),
                                  Container(
                                    // width: double.maxFinite,
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                          ),
                          Row(
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
                            children: [Text('30')],
                          ),
                          Row(
                            children: [Text('05')],
                          ),
                          Row(
                            children: [Text('02')],
                          ),
                          Row(
                            children: [Text('40')],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
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
                    padding: EdgeInsets.only(
                      top: 5,
                      left: 15,
                      right: 15,
                    ),
                    child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 3),
                            decoration: BoxDecoration(
                              color: Color(0xffF8F8F8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "২ কার্টুন নুডুলস পাঠানো হয়েছে",
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
                        })),
                Divider(),
                SizedBox(
                  height: screenheight * 0.020,
                ),
                Text(
                  "All Dealership Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenheight * 0.020,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: screenWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          40,
                        ),
                        topRight: Radius.circular(
                          40,
                        ),
                      ),
                      color: Colors.grey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          // New Dealership categories......................//new dealership...//
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: Text(
                                    "Boshundhara Noodles",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenheight * 0.025,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  height: 100,
                                  width: screenWidth,
                                  // color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 15,
                                      left: 5,
                                      bottom: 15,
                                    ),
                                    child: ListView(
                                      physics: BouncingScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        productItems(
                                          screenheight: screenheight,
                                          productName: "Cocola Noodle",
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: "Tifeen Magii Noodle",
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: "Coock Noodle ",
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: "Coock salts Noodle ",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // New Dealership categories......................//new dealership...//

                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: Text(
                                    "Boshundhara Biscuits",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenheight * 0.025,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  height: 100,
                                  width: screenWidth,
                                  // color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 15,
                                      left: 5,
                                      bottom: 15,
                                    ),
                                    child: ListView(
                                      physics: BouncingScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        productItems(
                                          screenheight: screenheight,
                                          productName: "Olympic energy min",
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: "Haque coocki butter",
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: "Lexux vegetables",
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: "Nutty Real ",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class productItems extends StatelessWidget {
  const productItems({
    super.key,
    required this.screenheight,
    required this.productName,
  });

  final double screenheight;
  final String productName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => ProductsView());
      },
      child: Row(
        children: [
          Container(
            height: 60,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  productName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenheight * 0.018,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
