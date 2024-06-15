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
    ProfilePage(),
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

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://www.example.com/profile.jpg'), // Replace with a valid image URL
            ),
            SizedBox(height: 20),
            Text(
              'Name: John Doe',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Age: 30',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Account: johndoe123',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Phone: +123456789',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Address: 123 Main Street, City, Country',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Degree: Bachelor of Science',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
