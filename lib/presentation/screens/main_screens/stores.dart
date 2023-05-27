import 'package:flutter/material.dart';
import 'package:multistore_firebase/presentation/components/appbar_widgets.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarTitle(title: 'Stores'),
      ),
    );
  }
}
