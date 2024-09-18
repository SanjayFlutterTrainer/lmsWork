import 'package:flutter/material.dart';
import 'package:lms/routes/approute.dart';
import 'package:lms/theme/themedata.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: appTheme,
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
