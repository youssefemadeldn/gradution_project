import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/b_home_view.dart';
import 'package:flutter_application_1/views/custom_navigation_bar.dart';

class MyNavigationBarView extends StatefulWidget {
  static String id = 'MyNavigationBar';
  MyNavigationBarView({Key? key}) : super(key: key);

  @override
  _MyNavigationBarViewState createState() => _MyNavigationBarViewState();
}

class _MyNavigationBarViewState extends State<MyNavigationBarView> {
  int selectedIndex = 0;

  static const List<Widget> listOfViews = <Widget>[
    HomeView(),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Notification Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Setting Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: listOfViews.elementAt(selectedIndex),
      ),
      bottomNavigationBar: CustomNavigationBar(
        intId: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
