import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {

  final String naam;

  const ProfileScreen({super.key, required this.naam});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile $naam'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          CircleAvatar(
            radius: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
                child: Image(image: NetworkImage('https://avatars.githubusercontent.com/u/17814795?v=4'))),
          ),
          Text(
            'Muhammad Abid',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
