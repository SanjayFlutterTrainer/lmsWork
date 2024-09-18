import 'package:flutter/material.dart';
import 'package:lms/providers/bottomNaviationProvider.dart';
import 'package:lms/screens/Homepage.dart';
import 'package:lms/screens/ProfilePage.dart';
import 'package:lms/screens/batchListPage.dart';
import 'package:lms/screens/notificationPage.dart';
import 'package:lms/widgets/customBottomNavigationBar.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final List<Widget> _pages = [
    Homepage(),
    BatchListPage(),
    NotificationPage(),
    Profilepage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          body: SafeArea(
              child:
                  _pages[provider.currentIndex]), // Switch views based on index
          bottomNavigationBar: CustomBottomNav(), // Custom bottom navigation
        );
      },
    );
  }
}
