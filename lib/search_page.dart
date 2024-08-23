import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final int _selectedIndex = 3; // Set to 3 to indicate this is the Search page
  bool _showSearch = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: _showSearch
            ? TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                setState(() {
                  _showSearch = false;
                  _searchController.clear();
                });
              },
            ),
          ),
          autofocus: true,
        )
            : const Text('Search Page'),
        actions: [
          if (!_showSearch)
            IconButton(
              icon: Icon(CupertinoIcons.search),
              onPressed: () {
                setState(() {
                  _showSearch = true;
                });
              },
            ),
        ],
      ),
      body: Center(
        child: const Text(
          'Search Page Content', // This is the simplified content
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(left: 40), // Adjust padding as needed
              child: Icon(CupertinoIcons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(left: 38), // Adjust padding as needed
              child: Icon(CupertinoIcons.calendar),
            ),
            label: '\t \t \t \t  Calendar',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(left: 20), // Adjust padding as needed
              child: Icon(CupertinoIcons.bell),
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(CupertinoIcons.search),
            ),
            label: '       Search',
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
              Navigator.pushReplacementNamed(context, '/notifications');
              break;
            case 3:
            // Already on Search page, no action needed
              break;
          }
        },
      ),
    );
  }
}
