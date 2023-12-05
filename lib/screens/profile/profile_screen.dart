import 'package:flutter/material.dart';
import 'package:lithabit/screens/profile/sections/bio_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E-Repository",
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              BioSection(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
