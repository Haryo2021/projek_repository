import 'package:flutter/material.dart';

class BioSection extends StatelessWidget {
  const BioSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "E-Repository",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 16),
        Text(
          "Aplikasi E-Repository ini bertujuan untuk memudahkan dalam pencarian Buku atau jurnal yang tersimpan pada Handphone.",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
