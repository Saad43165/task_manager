import 'package:final_flutter_project/user_info_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  final String name;
  final String age;
  final String email;

  const Profile({
    super.key,
    required this.age,
    required this.email,
    required this.name,
  });

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 30),
        child: Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
            ),



            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 115),
                  child: CircleAvatar(
                    radius: 30,
                    child: Image(image: AssetImage('assets/images/person.png')),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Name: ${widget.name}',
                    style: GoogleFonts.alice(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Email: ${widget.email}',
                    style: GoogleFonts.alice(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Age: ${widget.age}',
                    style: GoogleFonts.alice(
                    fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),
                  ),

                ),
                const Spacer(),
                 Padding(

                  padding: const EdgeInsets.only(bottom: 13),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {

                            Navigator.push(context, MaterialPageRoute(builder: (context)=> UserInfoScreen(age: widget.age, email: widget.email, name: widget.name)));

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple[200],
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size(100, 40),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                        child: Text(
                            'Edit',
                          style: GoogleFonts.alice(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                )

              ],

            ),
          ),
        ),
      ),

    );
  }
}
