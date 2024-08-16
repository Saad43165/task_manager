import 'package:final_flutter_project/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  State<UserInfoScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<UserInfoScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'T A S K  M A N A G E R',
          ),
          backgroundColor: Colors.blue[300],
          actions: [

          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height:200),

                SizedBox(height: 20),
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
                          prefixIcon: Icon(Icons.person,color: Colors.blueGrey,),
                          hintStyle: const TextStyle(fontStyle: FontStyle.italic,color: Colors.blueGrey),
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
                          prefixIcon: Icon(Icons.email_outlined,color: Colors.blueGrey,),
                          hintStyle: const TextStyle(fontStyle: FontStyle.italic,color: Colors.blueGrey),
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
                          prefixIcon: Icon(Icons.numbers_outlined,color: Colors.blueGrey,),
                          hintStyle: const TextStyle(fontStyle: FontStyle.italic,color: Colors.blueGrey),
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
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DashboardScreen(
                                  name: _nameController.text,
                                  email: _emailController.text,
                                  age: int.parse(_ageController.text),
                                ),
                              ),
                            );
                          }
                        },
                        child: Text(
                          'Submit',
                          style: GoogleFonts.alice(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size(150, 40),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 160),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Enter the information above. The details will be passed to the next screen.',
                        style: GoogleFonts.adventPro(
                          fontSize: 13,
                          fontStyle: FontStyle.italic,
                        ),
                        softWrap: true,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
