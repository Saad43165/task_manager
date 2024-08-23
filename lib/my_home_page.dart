import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_flutter_project/otp_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _mobileController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.blueGrey],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: AppBar(
              title: Text(
                'Login',
                style: GoogleFonts.alice(fontSize: 28),
              ),
              backgroundColor: Colors.transparent,
              centerTitle: true,
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
                        image: AssetImage('assets/images/logo2.png'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Enter your Phone Number',
                  style: GoogleFonts.alice(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'We Will send you the 6 digits verification code',
                    style: GoogleFonts.adventPro(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                    softWrap: true,
                  ),
                ),
                const SizedBox(height: 25),
                Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _mobileController,
                    enabled: true,
                    enableSuggestions: true,
                    cursorColor: Colors.blueAccent,
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
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Mobile Number',
                      labelStyle: const TextStyle(color: Colors.blue),
                      hintText: '03123456789',
                      hintStyle: const TextStyle(fontStyle: FontStyle.italic),
                      prefixIcon: const Icon(Icons.phone, color: Colors.blue),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                  ),
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
                      if (_formKey.currentState?.validate() ?? false) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtpScreen(
                              mobileNumber: _mobileController.text,
                            ),
                          ),

                        ).then((returnedNumber) {
                          setState(){
                            _mobileController.text = returnedNumber;
                        }
                        });
                      }
                    },
                    child: Text(
                      'Send OTP',
                      style: GoogleFonts.alice(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(150, 40),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  ),
                ),
                const SizedBox(height: 230),


                Container(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Enter Number in above field, Code will be shared to Enter in Next Screen',
                        style: GoogleFonts.adventPro(
                          fontSize: 13,
                          fontStyle: FontStyle.italic,
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 45),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
