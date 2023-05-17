// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:multistore_firebase/minor_screens/search.dart';
import 'package:multistore_firebase/Widgets/fake_search.dart';


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
                  label: "Elecronics",
                ),
                ReapetedTab(
                  label: "Accesories",
                ),
                ReapetedTab(
                  label: "Home and Grden",
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
            Center(child: Text("Elecronics screen")),
            Center(child: Text("Accesories screen")),
            Center(child: Text("Home and Grden screen")),
            Center(child: Text("Kids screen")),
            Center(child: Text("Beauty  screen")),
            // Center(child: Text("electonics screen")),
          ],
        ),
      ),
    );
  }
}
class ReapetedTab extends StatelessWidget {
  final String label;
  const ReapetedTab({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: TextStyle(color: Colors.grey.shade600),
      ),
    );
  }
}
