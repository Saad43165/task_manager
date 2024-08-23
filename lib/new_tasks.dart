import 'dart:ui';

import 'package:final_flutter_project/calendar_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTasks extends StatefulWidget {
  const NewTasks({super.key});

  @override
  State<NewTasks> createState() => _NewTasksState();
}

class _NewTasksState extends State<NewTasks> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.withOpacity(0.8),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(CupertinoIcons.back),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CalendarPage()));
                    },
                  ),
                  const Spacer(),
                  Text(
                    'Create a Task',
                    style: GoogleFonts.almarai(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(CupertinoIcons.search),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CalendarPage()));
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextFormField(
                cursorColor: Colors.white,
                style: GoogleFonts.almarai(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  errorBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  labelText: 'Name',
                  labelStyle: GoogleFonts.almarai(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  hintText: 'Enter your Name',
                  hintStyle: GoogleFonts.almarai(
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Name';
                  } else if (int.tryParse(value) != null) {
                    return 'Please enter a valid name';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextFormField(
                cursorColor: Colors.white,
                style: GoogleFonts.almarai(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  errorBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  labelText: 'Date',
                  labelStyle: GoogleFonts.almarai(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  hintText: 'Enter Date',
                  hintStyle: GoogleFonts.almarai(
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                    decimal: true, signed: true),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Date';
                  } else if (int.tryParse(value) != null) {
                    return 'Please enter a valid date';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: TextFormField(
                                cursorColor: Colors.lightBlue,
                                style: GoogleFonts.aleo(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                decoration: InputDecoration(
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.lightBlue),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.lightBlue, width: 2),
                                  ),
                                  errorBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.lightBlue, width: 2),
                                  ),
                                  border: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.lightBlue, width: 2),
                                  ),
                                  labelText: 'Start Time',
                                  labelStyle: GoogleFonts.almarai(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                  hintText: 'Enter Start Time',
                                  hintStyle: GoogleFonts.almarai(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                                keyboardType: TextInputType.datetime,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: TextFormField(
                                cursorColor: Colors.lightBlue,
                                style: GoogleFonts.aleo(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                decoration: InputDecoration(
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.lightBlue),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.lightBlue, width: 2),
                                  ),
                                  errorBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.lightBlue, width: 2),
                                  ),
                                  border: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.lightBlue, width: 2),
                                  ),
                                  labelText: 'End Time',
                                  labelStyle: GoogleFonts.almarai(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                  hintText: 'Enter End Time',
                                  hintStyle: GoogleFonts.almarai(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                                keyboardType: TextInputType.datetime,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: TextFormField(
                            maxLines: 3,
                            cursorColor: Colors.lightBlue,
                            style: GoogleFonts.alike(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.lightBlue),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.lightBlue, width: 2),
                              ),
                              errorBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.lightBlue, width: 2),
                              ),
                              border: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.lightBlue, width: 2),
                              ),
                              labelText: 'Description',
                              labelStyle: GoogleFonts.almarai(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                              hintText: 'Enter Details of the Project',
                              hintStyle: GoogleFonts.almarai(
                                fontStyle: FontStyle.italic,
                                color: Colors.lightBlue,
                              ),
                            ),
                            keyboardType: TextInputType.multiline,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'Category',
                              style: GoogleFonts.almarai(
                                  fontSize: 20, color: Colors.grey),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, left: 20, right: 20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    _buildCategoryContainer('Design'),
                                    _buildCategoryContainer('Meeting'),
                                    _buildCategoryContainer('Coding'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 100, left: 20, right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    _buildCategoryContainer('BDE'),
                                    _buildCategoryContainer('Testing'),
                                    _buildCategoryContainer('Quick call'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const CalendarPage()),
                                );
                              },
                              child: Container(
                                height: 70,
                                width: 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.blue, Colors.blueAccent],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      offset: Offset(0, 4),
                                      blurRadius: 8,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        CupertinoIcons.check_mark_circled_solid,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Create Task',
                                        style: GoogleFonts.anaheim(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )


                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryContainer(String text) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.9),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.blue, width: 1),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.almarai(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
