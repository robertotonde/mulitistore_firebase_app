import 'package:flutter/material.dart';

class SubCategoryProducts extends StatelessWidget {
  final String subCategName;
  const SubCategoryProducts({super.key, required this.subCategName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subCategName),
      ),
    );
  }
}
