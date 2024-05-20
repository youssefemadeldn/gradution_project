import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Smart%20Service%20Views/study_schedule.dart';
import 'package:flutter_application_1/views/b_home_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://blog.photofeeler.com/wp-content/uploads/2017/12/linkedin-profile-picture.jpg'),
            ),
            accountEmail: Text('jane.doe@example.com'),
            accountName: Text(
              'Jane Doe',
              style: TextStyle(fontSize: 24.0),
            ),
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.house),
            title: const Text(
              'Home',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const HomeView(
                      // title: 'Houses',
                      ),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.apartment),
            title: const Text(
              'Apartments',
              style: TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const StudySchedule(
                      // title: 'Apartments',
                      ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
