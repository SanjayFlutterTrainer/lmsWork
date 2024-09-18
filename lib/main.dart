import 'package:flutter/material.dart';
import 'package:lms/app.dart';
import 'package:lms/providers/bottomNaviationProvider.dart';
import 'package:lms/providers/loginprovider.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SomeProvider()),
        ChangeNotifierProvider(create: (_) => BottomNavProvider()),
      ],
      child: MyApp(),
    ),
  );
}
