import 'package:e_dealer/app/modules/home/views/product_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../utillity/colors.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {

    var screenheight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    var boshundharaGroup = [
      { "name": "Boshundhara Ata", "price": "110" },
      { "name": "Tiffen Maggi noodles", "price": "25" },
      { "name": "Fit Crackers", "price": "60" },
      { "name": "Baby salt noodles", "price": "90" },
      { "name": "Pata Noodles", "price": "200" },
      { "name": "Tissues", "price": "40" }
    ];
    var pranRflGroup = [
      { "name": "Bisk Club Biscuits", "price": "110" },
      { "name": "PRAN Potata", "price": "25" },
      { "name": "Fit Crackers", "price": "60" },
      { "name": "All Time Honeycomb", "price": "90" },
      { "name": "All Time Bun", "price": "200" },
      { "name": "Wonder", "price": "40" }
    ];




    var teerGroup = [

      { "name": "Teer Ata", "price": "85" },
      { "name": "Teer Sugar", "price": "45" },
      { "name": "Teer Firni", "price": "120" },
      { "name": "Teer Halim Mix", "price": "120" },
      { "name": "Teer oil", "price": "180" },
      { "name": "Teer Rice", "price": "60" }



    ];


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
          body:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            "10 units Bashundhara Biscuits has been delivered",
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

              Divider(),
              SizedBox(
                height: screenheight * 0.020,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "All Dealership",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenheight * 0.020,
                    color: Colors.blueGrey
                  ),
                ),
              ),
              SizedBox(
                height: screenheight * 0.020,
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
                    color: ColorResources.LIGHT_GREY,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
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
                                    "Boshundhara Group",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenheight * 0.022,
                                      color: ColorResources.BLACK_MAERIAL,
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
                                          productName: boshundharaGroup[0]['name'].toString(),
                                          productPrice: boshundharaGroup[0]['price'].toString(),
                                          productImage: '',
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: boshundharaGroup[1]['name'].toString(),
                                          productPrice: boshundharaGroup[1]['price'].toString(),
                                          productImage: '',
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: boshundharaGroup[2]['name'].toString(),
                                          productPrice: boshundharaGroup[2]['price'].toString(),
                                          productImage: '',
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: boshundharaGroup[3]['name'].toString(),
                                          productPrice: boshundharaGroup[3]['price'].toString(),
                                          productImage: '',
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: boshundharaGroup[4]['name'].toString(),
                                          productPrice: boshundharaGroup[4]['price'].toString(),
                                          productImage: '',
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: boshundharaGroup[5]['name'].toString(),
                                          productPrice: boshundharaGroup[5]['price'].toString(),
                                          productImage: '',
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
                                    "Pran RFL Group",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenheight * 0.022,
                                      color: ColorResources.BLACK_MAERIAL,
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
                                          productName: pranRflGroup[0]['name'].toString(),
                                          productPrice: pranRflGroup[0]['price'].toString(),
                                          productImage: '',
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: pranRflGroup[1]['name'].toString(),
                                          productPrice: pranRflGroup[1]['price'].toString(),
                                          productImage: '',
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: pranRflGroup[2]['name'].toString(),
                                          productPrice: pranRflGroup[2]['price'].toString(),
                                          productImage: '',
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: pranRflGroup[3]['name'].toString(),
                                          productPrice: pranRflGroup[3]['price'].toString(),
                                          productImage: '',
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: pranRflGroup[4]['name'].toString(),
                                          productPrice: pranRflGroup[4]['price'].toString(),
                                          productImage: '',
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: pranRflGroup[5]['name'].toString(),
                                          productPrice: pranRflGroup[5]['price'].toString(),
                                          productImage: '',
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: Text(
                                    "Teer Group",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenheight * 0.022,
                                      color: ColorResources.BLACK_MAERIAL,
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
                                          productName: teerGroup[0]['name'].toString(),
                                          productPrice:teerGroup[0]['price'].toString(),
                                          productImage: '',
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: teerGroup[1]['name'].toString(),
                                          productPrice:teerGroup[1]['price'].toString(),
                                          productImage: '',
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: teerGroup[2]['name'].toString(),
                                          productPrice:teerGroup[2]['price'].toString(),
                                          productImage: '',
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                            productName: teerGroup[3]['name'].toString(),
                                            productPrice:teerGroup[3]['price'].toString(),
                                          productImage: '',
                                        ),
                                        productItems(
                                          screenheight: screenheight,
                                          productName: teerGroup[4]['name'].toString(),
                                          productPrice:teerGroup[4]['price'].toString(),
                                          productImage:'' ,
                                        ),

                                        productItems(
                                          screenheight: screenheight,

                                          productName: teerGroup[5]['name'].toString(),
                                          productPrice:teerGroup[5]['price'].toString(),
                                          //1 + 1 == 2 ?? print('check true'):print('chkfalse');
                                          productImage: '',
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
              ),


            ],
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
    required this.productPrice,
    required this.productImage
  });

  final double screenheight;
  final String productName;
  final String productPrice;
  final String productImage;


//Container(
//     child: loading? //first check if loading is true or false
//             CircularProgressIndicator(): //show progress on loading = true
//                 error?Text("Error"): //when loading = false, and then check error is true or false
//                   Text("Loaded and No Error"), //if loading = false and error = false, then show this text
// )
  @override
  Widget build(BuildContext context) {
    print('Found product image'+productImage);
    return InkWell(
      onTap: () {
        Get.to(() => ProductsView(productName,productPrice));
      },
      child: Container(
        height: 100,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                productName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenheight * 0.018,
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
