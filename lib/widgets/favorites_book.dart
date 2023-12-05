import 'package:flutter/material.dart';
import 'package:lithabit/widgets/reading_book.dart';

import 'book_cover_3d.dart';

class FavoritesMarkBook extends StatelessWidget{
  const FavoritesMarkBook ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Favorites Book",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ReadingBook(
                          pdfPath: "assets/forsaken-oliver-bowden.pdf",
                        )),
              );
            },
            child: BookCover3D(
              imageUrl:
                  "https://m.media-amazon.com/images/I/81J26IIEQGL.SY385.jpg",
            ),
          ),
        ),
      ],
    );
  }
}
