import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

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
                flex: 8,
                child: Container(
                  // color: Colors.green,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      index = index + 1;
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: index % 2 == 0
                                ? Colors.grey.shade400
                                : Colors.grey.shade300,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  index.toString() + ".",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text("Product Name"),
                                Text("01"),
                                Text(
                                  "130.78" + "  ৳ ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
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
                flex: 1,
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
