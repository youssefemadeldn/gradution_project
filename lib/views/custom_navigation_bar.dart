import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
    required this.intId,
    required this.onItemTapped,
  });

  final int intId;
  final Function(int) onItemTapped;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      animationDuration: const Duration(milliseconds: 1000),
      destinations: const [
        NavigationDestination(
          icon: Icon(
            Icons.home,
            size: 30,
          ),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.person,
            size: 30,
          ),
          label: 'Profile',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.notifications,
            size: 30,
          ),
          label: 'Notification',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.settings,
            size: 30,
          ),
          label: 'Setting',
        ),
      ],
      selectedIndex: intId,
      onDestinationSelected: onItemTapped,
    );
  }
}
