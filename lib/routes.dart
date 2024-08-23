// routes.dart
import 'package:final_flutter_project/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'search_page.dart';
import 'notifications_page.dart';
import 'calendar_page.dart';
import 'task1_screen.dart';
import 'task2_screen.dart';
import 'task3_screen.dart';

class AppRoutes {
  static const String home = '/home';
  static const String search = '/search';
  static const String notifications = '/notifications';
  static const String calendar = '/calendar';
  static const String task1 = '/task1';
  static const String task2 = '/task2';
  static const String task3 = '/task3';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => DashboardScreen(name: '', age: '', email: ''));
      case search:
        return MaterialPageRoute(builder: (context) => SearchPage());
      case notifications:
        return MaterialPageRoute(builder: (context) => NotificationsPage());
      case calendar:
        return MaterialPageRoute(builder: (context) => CalendarPage());
      case task1:
        return MaterialPageRoute(builder: (context) => Task1Screen());
      case task2:
        return MaterialPageRoute(builder: (context) => Task2Screen());
      case task3:
        return MaterialPageRoute(builder: (context) => Task3Screen());
      default:
        return MaterialPageRoute(builder: (context) => DashboardScreen(name: '', age: '', email: ''));
    }
  }
}
