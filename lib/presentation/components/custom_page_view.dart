import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({Key? key, required this.pages, required this.height})
      : super(key: key);

  final double height;
  final List<Widget> pages;

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  @override
  void initState() {
    getPages();
    super.initState();
  }

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  final _pageViewController = PageController(
    initialPage: 0,
  );

  int currentPage = 0;

  List<int> list = [];

  void getPages() {
    for (int i = 0; i < widget.pages.length; i++) {
      list.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              pageSnapping: true,
              scrollDirection: Axis.horizontal,
              controller: _pageViewController,
              children: widget.pages,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: list.map((e) {
                return AnimatedContainer(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  width: e == currentPage ? 20 : 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: e != currentPage
                        ? const Color(0xFFD0D1D1)
                        : kPrimaryColor,
                  ),
                  duration: const Duration(milliseconds: 200),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                currentPage > 0
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 30,
                              color: const Color(0xFF003E5F).withOpacity(0.05),
                              blurRadius: 60,
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.black54,
                        ),
                      )
                    : const SizedBox(),
                GestureDetector(
                  onTap: () {
                    _pageViewController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: currentPage == 2 ? 100 : 50,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 30,
                          color: const Color(0xFF003E5F).withOpacity(0.05),
                          blurRadius: 60,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: currentPage == 2
                        ? const Text(
                            'Get Started',
                            maxLines: 1,
                            style: TextStyle(overflow: TextOverflow.ellipsis),
                          )
                        : const Icon(
                            Icons.arrow_forward,
                            color: Colors.black54,
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
