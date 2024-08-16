import 'package:final_flutter_project/user_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'dashboard_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                const SizedBox(
                  height: 65,
                ),
                Container(
                    color: Colors.blue,
                    height: 270,
                    width: 270,
                    alignment: Alignment.center,
                    child: const Image(image: AssetImage('assets/images/logo.png',),)
                ),
                const SizedBox(
                  height: 20,
                ),
                Text('Please enter OTP',style: GoogleFonts.alice(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,)),
                const SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: PinCodeTextField(
                    appContext: context,
                    length: 6,
                    keyboardType: TextInputType.number,

                    cursorColor: Colors.blue,
                    enabled: true,
                    pinTheme: PinTheme(

                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      inactiveFillColor: Colors.yellowAccent,
                      selectedFillColor: Colors.white12,
                      inactiveColor: Colors.blueAccent,
                      selectedColor: Colors.red,


                    ),
                    animationDuration: const Duration(milliseconds: 200),
                    onChanged: (value) {
                      // Handle pin code changes
                    },
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const UserInfoScreen(

                  )));},
                  child: Text(
                    'Verify',
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
                const SizedBox(
                  height: 230,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text('Enter the OTP code in the Above Field',style: GoogleFonts.adventPro(fontSize: 13,fontStyle: FontStyle.italic),
                        softWrap: true,)
                    ],
                  ),
                ),
                const SizedBox(
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
