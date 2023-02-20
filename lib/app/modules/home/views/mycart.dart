import 'package:flutter/material.dart';

class MyNewCartView extends StatelessWidget {
  const MyNewCartView({super.key});

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
            'My Cart',
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
        body: Container(
          height: screenheight,
          width: screenWidth,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Center(
                                child: Text(
                              "SL",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ),
                        Container(
                          height: screenheight,
                          width: 1,
                          color: Colors.black,
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: Center(
                                child: Text(
                              "P. Name",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ),
                        Container(
                          height: screenheight,
                          width: 1,
                          color: Colors.black,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Center(
                                child: Text(
                              "Qn",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ),
                        Container(
                          height: screenheight,
                          width: 1,
                          color: Colors.black,
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Center(
                                child: Text(
                              "Price",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                flex: 15,
                child: Container(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      index = index + 1;
                      return Container(
                        decoration: BoxDecoration(
                          color: index % 2 == 0
                              ? Color(0xfff8f8f8)
                              : Color(0xffefefef),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          child: IntrinsicHeight(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        index.toString(),
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                VerticalDivider(
                                  thickness: 1,
                                  color: Colors.black,
                                  width: 1,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    child: Center(child: Text("Product Name")),
                                  ),
                                ),
                                VerticalDivider(
                                  thickness: 1,
                                  color: Colors.black,
                                  width: 1,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(child: Text("01")),
                                  ),
                                ),
                                VerticalDivider(
                                  thickness: 1,
                                  color: Colors.black,
                                  width: 1,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "130.78" + "  ৳ ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
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
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Total Price :- 1284.90" + "৳ ",
                          style: TextStyle(
                            fontSize: screenheight * 0.022,
                          ),
                        ),
                        Spacer(),
                        VerticalDivider(
                          indent: 20,
                          endIndent: 20,
                          thickness: 2,
                          color: Colors.grey,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amber,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "  Send  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: screenheight * 0.018,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
