import 'package:flutter/material.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  int counter = 1;

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
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white30,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Cocola Noodles",
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.search,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  myproductBox("Cocola mini pack"),
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
                                  "12,342.90",
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
                            Container(
                              width: 1,
                              color: Colors.black,
                            ),
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                child: Container(
                                  color: Colors.lightBlue,
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
    );
  }

  Widget myproductBox(String productName) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 30,
        ),
        height: screenheight * 0.050,
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Row(
          children: [
            Text(
              productName,
              style: TextStyle(
                fontSize: screenheight * 0.022,
              ),
            ),
            Spacer(),
            Container(
              width: screenWidth * 0.20,
              color: Colors.white,
              child: Center(
                child: Text(
                  counter.toString(),
                  style: TextStyle(
                    fontSize: screenheight * 0.022,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.10,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(Icons.remove),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            counter++;
                          });
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
