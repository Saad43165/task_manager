import 'package:final_flutter_project/dashboard_screen.dart';
import 'package:final_flutter_project/new_tasks.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final int _selectedIndex =
      1; // Set to 1 to indicate this is the Calendar page

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.deepPurple[50],
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
               color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)
                )
              ),
              height: 280,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: const Icon(CupertinoIcons.back),
                          color: Colors.black,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const DashboardScreen(name: '', age: '', email: '') ));
                          },
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(CupertinoIcons.search),
                          color: Colors.black,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const DashboardScreen(name: '', age: '', email: '') ));
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          height: 120,
                        ),
                        const Text(
                          'Aug, 2024',
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(width: 2, color: Colors.blue),
                          ),
                          elevation: 5,
                          color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const NewTasks()),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.add,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    'Add Task',
                                    style: GoogleFonts.afacad(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20, // Increased text size
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            height: 60,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mon',
                                        style: GoogleFonts.adamina(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 30),
                                      Text('Tue',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text(
                                        'Wed',
                                        style: GoogleFonts.adamina(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 30),
                                      Text('Thu',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Fri',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Sat',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Sun',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Mon',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Tue',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Wed',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Thu',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Fri',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Sat',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Sun',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text(
                                        'Mon',
                                        style: GoogleFonts.adamina(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 30),
                                      Text('Tue',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text(
                                        'Wed',
                                        style: GoogleFonts.adamina(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 30),
                                      Text('Thu',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Fri',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Sat',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Sun',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Mon',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Tue',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Wed',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Thu',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Fri',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Sat',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 30),
                                      Text('Sun',
                                          style: GoogleFonts.adamina(
                                              fontWeight: FontWeight.bold)),





                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text('3'),
                                SizedBox(
                                  width: 53,
                                ),
                                Text('4'),
                                SizedBox(
                                  width: 53,
                                ),
                                Text('5'),
                                SizedBox(
                                  width: 51,
                                ),
                                Text('6'),
                                SizedBox(
                                  width: 45,
                                ),
                                Text('7'),
                                SizedBox(
                                  width: 45,
                                ),
                                Text('8'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('9'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('10'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('11'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('12'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('13'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('14'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('15'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('16'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('17'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('18'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('19'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('20'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('21'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('22'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('23'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('24'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('25'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('26'),
                                SizedBox(
                                  width: 48,
                                ),
                                Text('27'), SizedBox(
                                  width: 48,
                                ),
                                Text('28'), SizedBox(
                                  width: 48,
                                ),
                                Text('29'), SizedBox(
                                  width: 48,
                                ),
                                Text('30'),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300, top: 15),
              child: Text(
                'Tasks',
                style:
                    GoogleFonts.aleo(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Container(
height: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              ListTile(
                                subtitle:  Text('31 May 2024',style: GoogleFonts.anaheim(fontSize: 15),),
                                leading: const Image(image: AssetImage('assets/images/list.png')),
                                selected: true,
                                style: ListTileStyle.list,
                                focusColor: Colors.red,
                                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                                dense: true,
                                selectedColor: Colors.grey,
                                iconColor: Colors.grey,
                                trailing: const Icon(CupertinoIcons.ellipsis_vertical,size: 30,),
                                title: Text(
                                  'Task 1',
                                  style: GoogleFonts.acme(fontSize: 20,color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              ListTile(
                                subtitle: Text('31 May 2024',style: GoogleFonts.anaheim(fontSize: 15),),
                                leading: const Image(image: AssetImage('assets/images/list.png')),
                                selected: true,
                                style: ListTileStyle.list,
                                focusColor: Colors.red,
                                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                                dense: true,
                                selectedColor: Colors.grey,
                                iconColor: Colors.blue,
                                trailing: const Icon(CupertinoIcons.ellipsis_vertical,size: 30,),
                                title: Text(
                                  'Task 2',
                                  style: GoogleFonts.acme(fontSize: 20,color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              ListTile(
                                subtitle: Text('31 May 2024',style: GoogleFonts.anaheim(fontSize: 15),),
                                leading: const Image(image: AssetImage('assets/images/list.png')),
                                selected: true,
                                style: ListTileStyle.list,
                                focusColor: Colors.red,
                                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                                dense: true,
                                selectedColor: Colors.grey,
                                iconColor: Colors.blue,
                                trailing: const Icon(CupertinoIcons.ellipsis_vertical,size: 30,),
                                title: Text(
                                  'Task 3',
                                  style: GoogleFonts.acme(fontSize: 20,color: Colors.black),
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
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Icon(CupertinoIcons.home),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 70,
                ),
                child: Icon(CupertinoIcons.calendar),
              ),
              label: '\t\t\t\t Calendar',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(CupertinoIcons.bell),
              ),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
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
                break;
              case 2:
                Navigator.pushReplacementNamed(context, '/notifications');
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
