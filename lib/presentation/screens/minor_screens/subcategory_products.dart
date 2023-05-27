import 'package:flutter/material.dart';
import 'package:multistore_firebase/presentation/components/appbar_widgets.dart';

class SubCategoryProducts extends StatelessWidget {
  final String mainCategName;
  final String subCategName;
  const SubCategoryProducts(
      {super.key, required this.subCategName, required this.mainCategName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const  AppBarBackButton(),
        title: AppBarTitle(title: subCategName),
      ),
      body: Center(
        child: Text(mainCategName),
      ),
    );
  }
}

