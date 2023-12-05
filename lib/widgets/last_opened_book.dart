import 'package:flutter/material.dart';
import 'package:lithabit/widgets/reading_book.dart';

import 'book_cover_3d.dart';

class LastOpenedBook extends StatelessWidget {
  const LastOpenedBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Opened Lastly  ",
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
                          pdfPath: "assets/harry_potter.pdf",
                        )),
              );
            },
            child: BookCover3D(
              imageUrl:
                  "https://upload.wikimedia.org/wikipedia/id/b/bf/Harry_Potter_and_the_Sorcerer%27s_Stone.jpg",
            ),
          ),
        ),
      ],
    );
  }
}
