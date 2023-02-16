import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TransactionView extends StatefulWidget {
  const TransactionView({Key? key}) : super(key: key);

  @override
  State<TransactionView> createState() => _TransactionViewState();
}

class _TransactionViewState extends State<TransactionView> {
  @override
  Widget build(BuildContext context) {

    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;


    return Container(
      height: screenHeigth,
      width: screenWidth,
      child: Column(
        children: [
          SizedBox(height: screenHeigth * 0.020,),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 8.0
                ),
                child: GestureDetector(
                  onTap: (){
                    print("clicked.......");
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
               right: 8.0
              ),
                child: Text("My order history",style: TextStyle(
                    fontSize: screenHeigth * 0.020,
                    color: Colors.blueGrey
                ),),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: screenHeigth * 0.020,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              thickness: 1.0,
              color: Colors.blueGrey,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return Padding(
                    padding: EdgeInsets.only(
                      left: screenHeigth * 0.017,
                      right: screenHeigth * 0.017,
                    ),
                    child: Container(
                      height: screenHeigth * 0.100,
                      width: screenWidth - 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color(0xFFffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffE5E5E5),
                            blurRadius: 5.0, // soften the shadow
                            spreadRadius: 3.0, //extend the shadow
                            offset: Offset(
                              0.0, // Move to right 5  horizontally
                              0.0, // Move to bottom 5 Vertically
                            ),
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Order Date',
                                style: TextStyle(
                                    color: Colors.blueGrey
                                ),),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 0.5,
                                  left: 10.0,
                                ),
                                child: Text(DateTime.now().toString().substring(0,11),
                                  style: TextStyle(
                                      color: Colors.blueGrey
                                  ),),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Maggie Noodles',
                                style: TextStyle(
                                    color: Colors.blueGrey
                                ),),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 0.5,
                                  left: 10.0,
                                ),
                                child: Text('10 unit',
                                  style: TextStyle(
                                      color: Colors.blueGrey
                                  ),),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Amount',
                                style: TextStyle(
                                    color: Colors.blueGrey
                                ),),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 0.5,
                                  left: 10.0,
                                ),
                                child: Text('300000 tk',
                                  style: TextStyle(
                                      color: Colors.blueGrey
                                  ),),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )

        ],
      ),
    );
  }
}
