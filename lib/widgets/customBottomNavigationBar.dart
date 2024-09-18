import 'package:flutter/material.dart';
import 'package:lms/providers/bottomNaviationProvider.dart';
import 'package:provider/provider.dart';

class CustomBottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: context.watch<BottomNavProvider>().currentIndex,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Batches'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: 'Notifications'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      onTap: (index) {
        context.read<BottomNavProvider>().setIndex(index); // Update index
      },
    );
  }
}
