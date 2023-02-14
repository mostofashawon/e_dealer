
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home/views/home_view.dart';
import '../../request/view/request_view.dart';
import '../../transaction/view/transaction_view.dart';

class BaseView extends StatefulWidget {
  const BaseView({Key? key}) : super(key: key);

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  int currentIndex = 1;

  final screens = [


    TransactionView(),
    HomeView(),
    RequestView()


  ];
  @override
  Widget build(BuildContext context) {

    return
      SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedFontSize: 10.0,
            unselectedFontSize: 10.0,
            currentIndex: currentIndex,
            selectedItemColor: Colors.blueGrey,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              setState(() => currentIndex = index);
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.transfer_within_a_station,
                  ),
                  label: 'Transaction History'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.request_page_outlined,
                  ),
                  label: 'Request'),
            ],
          ),
          body: screens[currentIndex],
        ),
      );
  }
}