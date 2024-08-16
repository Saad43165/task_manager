import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DashboardScreen extends StatelessWidget {

  final String name;
  final String email;
  final int age;
  const DashboardScreen ({super.key, required this.name, required this.email, required this.age});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name: ' ),
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              'Name: $name',
              style: GoogleFonts.aladin()

            ),
          ),
          SizedBox(height: 30,),
            Container(
            child: Text(
                'Email: $email',
                style: GoogleFonts.aladin()
            )
            ),
          SizedBox(height: 30,),
          Container(
              child: Text(
                  'Age: $age',
                  style: GoogleFonts.aladin()
              )
          ),

        ],
      ),
    );
  }
}
