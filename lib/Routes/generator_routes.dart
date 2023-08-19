import 'package:flutter/material.dart';

import '../screens/Error/Error_page.dart';
import '../screens/Home/Home_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());

      // Define more routes for other pages
      default:
        return MaterialPageRoute(builder: (_) => ErrorPage());
    }
  }
}
