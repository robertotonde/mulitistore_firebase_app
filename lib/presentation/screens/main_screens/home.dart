// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:multistore_firebase/minor_screens/search.dart';
import 'package:multistore_firebase/presentation/components/fake_search.dart';

import '../../components/repeatable_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const FakeSearch(),
          bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.yellow,
              indicatorWeight: 8,
              tabs: [
                ReapetedTab(
                  label: "Men",
                ),
                ReapetedTab(
                  label: "Women",
                ),
                ReapetedTab(
                  label: "Shoes",
                ),
                ReapetedTab(
                  label: "Bags",
                ),
                ReapetedTab(
                  label: "Electronics",
                ),
                ReapetedTab(
                  label: "Accessories",
                ),
                ReapetedTab(
                  label: "Home and Garden",
                ),
                ReapetedTab(
                  label: "Kids",
                ),
                ReapetedTab(
                  label: "Beauty",
                ),
              ]),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("men screen")),
            Center(child: Text("women screen")),
            Center(child: Text("shoes screen")),
            Center(child: Text("Bags screen")),
            Center(child: Text("Electronics screen")),
            Center(child: Text("Accessories screen")),
            Center(child: Text("Home and Garden screen")),
            Center(child: Text("Kids screen")),
            Center(child: Text("Beauty  screen")),
            // Center(child: Text("electonics screen")),
          ],
        ),
      ),
    );
  }
}
