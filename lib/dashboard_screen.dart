import 'package:final_flutter_project/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {
  final String name;
  final String age;
  final String email;

  const DashboardScreen({
    super.key,
    required this.name,
     required this.age,
    required this.email,
  });

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  int _selectedIndex = 0;

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/dashboard');
        break;
      case 1:
        Navigator.pushNamed(context, '/calendar');
        break;
      case 2:
        Navigator.pushNamed(context, '/notifications');
        break;
      case 3:
        Navigator.pushNamed(context, '/settings');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.rectangle_grid_2x2),
          color: Colors.black,
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        title: const SizedBox.shrink(),
        actions: [
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(
                      name: widget.name,
                      email: widget.email,
                      age: widget.age,
                    ),
                  ),
                );
              },
            ),
          ],

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello ${widget.name}!',
                  style: GoogleFonts.alice(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 10),
                Text(
                  'Have a nice day!',
                  style: GoogleFonts.adventPro(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                _buildNavButton('My Tasks', 0),
                _buildNavButton('In-Progress', 1),
                _buildNavButton('Completed', 2),
              ],
            ),
          ),
          SizedBox(
            height: 260,
            child: Stack(
              children: [
                PageView(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  children: [
                    _buildPageContent('Project 1', 'Front-End \nDevelopment', const LinearGradient(
                      colors: [Colors.blue, Colors.black45],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
                    _buildPageContent('Project 2', 'Back-End \nDevelopment ', const LinearGradient(
                      colors: [Colors.blue, Colors.black45],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
                    _buildPageContent('Project 3', 'Full Stack \nDevelopment', const LinearGradient(
                      colors: [Colors.blue, Colors.black45],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
                  ],
                ),
                Positioned(
                  bottom: -5,
                  left: -20,
                  right: 0,

                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(3, (index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 3),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: _currentPage == index
                                  ? Colors.blue
                                  : Colors.grey[700],
                              shape: BoxShape.circle,
                            ),
                          );
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 200),
                        child: Text(
                          'Projects \t \t \t ',
                          style: GoogleFonts.alice(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              children: [
                _buildListTile('Man Cherchez', 'see more ...', CupertinoIcons.ellipsis_vertical, '/task1'),
                _buildListTile('Task 2', 'Details of Task 2', CupertinoIcons.ellipsis_vertical, '/task2'),
                _buildListTile('Task 3', 'Details of Task 3', CupertinoIcons.ellipsis_vertical, '/task3'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.calendar),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bell),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          _onNavBarTapped(index);
        },
      ),
    );
  }

  Widget _buildNavButton(String text, int pageIndex) {
    final bool isActive = _currentPage == pageIndex;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          _pageController.jumpToPage(pageIndex);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: isActive
                ? const LinearGradient(
              colors: [Colors.blue, Colors.blueGrey],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
                : const LinearGradient(
              colors: [Colors.grey, Colors.grey],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.alice(
                fontSize: 16,
                color: isActive ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPageContent(String title, String description, Gradient gradient) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: 290,
              height: 190,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: gradient,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.transparent,
                    child: Center(
                      child: Image.asset('assets/images/my_tasks_logo.png'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.alice(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          description,
                          style: GoogleFonts.adventPro(
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          '01 Aug 2024',
                          style: GoogleFonts.adventPro(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, String subtitle, IconData icon, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.blueGrey],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),

          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(

              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
          leading: const CircleAvatar(

            radius: 25,
            backgroundImage: AssetImage('assets/images/list.png'),
          ),
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(color: Colors.white),
          ),
          trailing: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }


}
