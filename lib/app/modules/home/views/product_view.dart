import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class ProductsView extends StatefulWidget {

  String? productName;
  String? productPrice;
  String? totalPrice;

   ProductsView(String productName,String productPrice){
     this.productName = productName;
     this.productPrice = productPrice;
     this.totalPrice = productPrice;
   }



  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  int counter = 1;

  final HomeController controller = Get.put(HomeController());

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
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Icon(
        //       Icons.search,
        //       color: Colors.white,
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Icon(
        //       Icons.notifications_none_outlined,
        //       color: Colors.white,
        //     ),
        //   )
        // ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.white30,
                  child: Column(
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Container(
                      //     height: 60,
                      //     decoration: BoxDecoration(
                      //         border: Border.all(
                      //       width: 1,
                      //       color: Colors.grey,
                      //     )),
                      //     child: Padding(
                      //       padding: const EdgeInsets.symmetric(
                      //         horizontal: 20,
                      //       ),
                      //       child: Row(
                      //         children: [
                      //           Text(
                      //             "Cocola Noodles",
                      //             style: TextStyle(
                      //               fontSize: 22,
                      //             ),
                      //           ),
                      //           Spacer(),
                      //           Icon(
                      //             Icons.search,
                      //             size: 40,
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      myproductBox(widget.productName.toString()),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                        child: Text(
                                          "Total :",
                                          style: TextStyle(
                                            fontSize: screenheight * 0.022,
                                          ),
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                        child: Text(
                                          widget.totalPrice.toString(),
                                          style: TextStyle(
                                            fontSize: screenheight * 0.022,
                                          ),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.black,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            // color: Colors.grey,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () async {
                                      await controller.saveData(widget.productName.toString(),
                                      widget.totalPrice.toString(),counter.toString());
                                      controller.getData();
                                    },
                                    child: Container(
                                      color: Colors.black54,
                                      child: Center(
                                        child: Text(
                                          "Save",
                                          style: TextStyle(
                                            fontSize: screenheight * 0.022,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 1,
                                  color: Colors.black,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () async {
                                      await controller.saveData(widget.productName.toString(),
                                          widget.totalPrice.toString(),counter.toString());
                                    },
                                    child: Container(
                                      color: Colors.white,
                                      child: Center(
                                        child: Text(
                                          "Send Request",
                                          style: TextStyle(
                                            fontSize: screenheight * 0.022,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  // color: Colors.blueGrey,
                ),
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
    );
  }

  Widget myproductBox(String productName) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          height: screenheight * 0.030,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blueGrey,
          ),
          height: screenheight * 0.300,
          width: screenWidth - 50,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  productName.toString(),
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                Text(
                  widget.productPrice.toString(),
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: screenheight * 0.030,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  if(counter > 0){
                    counter--;
                    widget.totalPrice = (int.parse(widget.totalPrice.toString()) -  int.parse(widget.productPrice.toString())).toString();
                  }

                });
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.remove,
                    size: screenheight * 0.050,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.040,
            ),
            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: screenheight * 0.030,
              ),
            ),
            SizedBox(
              width: screenWidth * 0.040,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  counter++;
                  widget.totalPrice = (int.parse(widget.totalPrice.toString()) + int.parse(widget.productPrice.toString())).toString();
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.add,
                    size: screenheight * 0.050,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
