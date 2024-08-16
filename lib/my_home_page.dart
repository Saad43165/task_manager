import 'package:final_flutter_project/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 65,
                ),
                Container(
                  color: Colors.blue,
                  height: 270,
                  width: 270,
                  alignment: Alignment.center,
                  child: const Image(image: AssetImage('assets/images/logo.png',),)
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Login',style: GoogleFonts.alice(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,)),
                const SizedBox(height: 25,),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
            
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
            
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
            
                    ),
                    labelText: 'Mobile Number',
                    labelStyle: const TextStyle(color: Colors.blue,),
                    hintText: 'Enter Phone Number',
                    hintStyle: const TextStyle(fontStyle: FontStyle.italic),
                    prefixIcon: const Icon(Icons.phone, color: Colors.blue),
            
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter OTP';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OtpScreen()));},
                  child: Text(
                    'Send OTP',
                    style: GoogleFonts.alice(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
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
                SizedBox(
                  height: 230,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text('Enter Number in above field, Code will be shared to Enter in Next Screen',style: GoogleFonts.adventPro(fontSize: 13,fontStyle: FontStyle.italic),
                      softWrap: true,)
                    ],
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
              ],
            ),
          ),
        ),
      
      ),
    );
  }
}
