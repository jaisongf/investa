import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Routes/generator_routes.dart';
import 'config/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      title: 'Wash App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Constant.textTheme,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
