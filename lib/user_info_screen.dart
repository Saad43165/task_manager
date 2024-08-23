import 'dart:async';

import 'package:final_flutter_project/dashboard_screen.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInfoScreen extends StatefulWidget {
  final String name;
  final String email;
  final String age;
  const UserInfoScreen({super.key,  this.name = '',  this.email = '',  this.age = ''});

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  final _formKey = GlobalKey<FormState>();
   TextEditingController _nameController = TextEditingController();
   TextEditingController _emailController = TextEditingController();
   TextEditingController _ageController = TextEditingController();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController(text: widget.email);
    _nameController = TextEditingController(text: widget.name);
    _ageController = TextEditingController(text: widget.age.toString());

  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.blue, Colors.blueGrey],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: AppBar(
              title: Text(
                'User Information',
                style: GoogleFonts.alice(fontSize: 28),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              automaticallyImplyLeading: false, // Remove the back arrow
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: CircleAvatar(
                    radius: 100,
                    child: CircleAvatar(
                      radius: 100,
                      child: Image(
                        image: AssetImage('assets/images/user_info.png'),
                      ),
                    ),
                  ),
                ),
                Text(
                  'User Information',
                  style: GoogleFonts.alice(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 25),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'Name',
                          labelStyle: const TextStyle(color: Colors.blue),
                          hintText: 'Enter your name',
                          prefixIcon: const Icon(CupertinoIcons.person_add, color: Colors.lightBlue, size: 22),
                          hintStyle: const TextStyle(fontStyle: FontStyle.italic, color: Colors.blueGrey),
                        ),
                        keyboardType: TextInputType.name,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'Email',
                          labelStyle: const TextStyle(color: Colors.blue),
                          hintText: 'Enter your email',
                          prefixIcon: const Icon(CupertinoIcons.mail, color: Colors.lightBlue, size: 22),
                          hintStyle: const TextStyle(fontStyle: FontStyle.italic, color: Colors.blueGrey),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _ageController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'Age',
                          labelStyle: const TextStyle(color: Colors.blue),
                          hintText: 'Enter your age',
                          prefixIcon: const Icon(CupertinoIcons.number, color: Colors.lightBlue, size: 20),
                          hintStyle: const TextStyle(fontStyle: FontStyle.italic, color: Colors.blueGrey),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your age';
                          } else if (int.tryParse(value) == null) {
                            return 'Please enter a valid number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Colors.blue, Colors.blueGrey],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DashboardScreen(
                                    name: _nameController.text,
                                    email: _emailController.text,
                                    age: _ageController.text
                                  ),
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            minimumSize: const Size(150, 40),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          ),
                          child: Text(
                            'Submit',
                            style: GoogleFonts.alice(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 100),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Enter the Valid Information. This Information will be used later.',
                        style: GoogleFonts.adventPro(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
