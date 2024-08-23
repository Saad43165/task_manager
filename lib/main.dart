// main.dart
import 'package:final_flutter_project/dashboard_screen.dart';
import 'package:final_flutter_project/my_home_page.dart';
import 'package:flutter/material.dart';
import 'routes.dart';
import 'dashboard_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      onGenerateRoute: AppRoutes.generateRoute,
      // Optionally, handle unknown routes if necessary
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) =>  DashboardScreen(name: '', age: '', email: ''));
      },
    );
  }
}
