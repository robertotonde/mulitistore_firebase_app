import 'package:flutter/material.dart';
// import 'package:multistore_firebase/presentation/screens/main_screens/customer_home.dart';
import 'package:multistore_firebase/presentation/screens/main_screens/supplier_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CustomerHomeScreen(),
      home: SupplierHomeScreen(),
    );
  }
}
