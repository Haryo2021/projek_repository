import 'package:flutter/material.dart';
import 'package:lithabit/widgets/filter.dart';
import '../../widgets/searchbar.dart';

class RakBukuScreen extends StatelessWidget {
  const RakBukuScreen({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rak Buku",
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SearchBarSection(),
              SizedBox(height: 24),
              FilterRowSection(),
              SizedBox(height: 24),
            ],
          ),),
      ),
    );
  }
}
