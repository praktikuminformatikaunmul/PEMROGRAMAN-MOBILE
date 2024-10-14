import 'package:flutter/material.dart';

class MyListDoctor extends StatefulWidget {
  const MyListDoctor({super.key});

  @override
  State<MyListDoctor> createState() => _MyListDoctorState();
}

class _MyListDoctorState extends State<MyListDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List-doctor'),
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Container(
          width: double.infinity,
          height: 100,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.list,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}