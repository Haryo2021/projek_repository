import 'package:flutter/material.dart';
import 'package:lithabit/widgets/keep_reading_section.dart';
import 'package:lithabit/widgets/favorites_book.dart';


class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favorites Book",
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              FavoritesMarkBook(),
              KeepReadingSection(),
            ],
          ),
        ),
      ),
    );
  }
}
