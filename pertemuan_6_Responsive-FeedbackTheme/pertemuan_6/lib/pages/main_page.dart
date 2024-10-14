import 'package:flutter/material.dart';
import 'package:pertemuan_3/pages/HomePage.dart';
import 'package:pertemuan_3/pages/appointment.dart';
import 'package:pertemuan_3/pages/list_doctor.dart';
import 'package:pertemuan_3/pages/profile.dart';

class MyMainPage extends StatefulWidget {
  const MyMainPage({super.key});

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _pages = [
    const MyHomePage(),
    const MyListDoctor(),
    const MyAppointment(),
    const MyProfile(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: _onPageChanged,
        physics: const BouncingScrollPhysics(), // You can change this to your preferred scroll physics
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.primary,
        selectedItemColor: Theme.of(context).colorScheme.onPrimary,
        unselectedItemColor:Theme.of(context).colorScheme.onPrimary.withOpacity(0.7),
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Doctors'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Appointment'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
