// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multistore_firebase/minor_screens/search.dart';


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
          title: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SeacrchScreen()));
            },
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow, width: 1.4),
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'What are you looking For',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ],
                    ),
                    Container(
                      height: 32,
                      width: 75,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(25)),
                      child: const Center(
                        child: Text(
                          'Search',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
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
