import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final int _selectedIndex = 2; // Set to 2 to indicate this is the Notifications page

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Your Tasks in previous 1 Hour', // Simplified content
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(left: 40), // Adjust padding as needed
                child: Icon(CupertinoIcons.home),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(left: 34,), // Adjust padding as needed
                child: Icon(CupertinoIcons.calendar),
              ),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(left: 20), // Adjust padding as needed
                child: Icon(CupertinoIcons.bell),
              ),
              label: ' \t \t Notifications',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(left: 20), // Adjust padding as needed
                child: Icon(CupertinoIcons.search),
              ),
              label: 'Search',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            // Handle navigation based on index
            switch (index) {
              case 0:
                Navigator.pushReplacementNamed(context, '/home');
                break;
              case 1:
                Navigator.pushReplacementNamed(context, '/calendar');
                break;
              case 2:
                break;
              case 3:
                Navigator.pushReplacementNamed(context, '/search');
                break;
            }
          },
        ),
      ),
    );
  }
}
