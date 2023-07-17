import 'package:flutter/material.dart';

import '../../components/custom_page_view.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomPageView(
                          pages: [
                            Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                ),
                                SizedBox(
                                  child: Image.asset(
                                    "images/welcome02.png",
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Center(
                                        child: Text(
                                          "NUNUA",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 32,
                                            overflow: TextOverflow.fade,
                                            letterSpacing: 12,
                                          ),
                                          maxLines: 6,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Center(
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            overflow: TextOverflow.fade,
                                          ),
                                          maxLines: 6,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                ),
                                SizedBox(
                                  child: Image.asset(
                                    "images/welcome03.png",
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Center(
                                        child: Text(
                                          "UZA BIDHAA",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 32,
                                            overflow: TextOverflow.fade,
                                            letterSpacing: 12,
                                          ),
                                          maxLines: 6,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Center(
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            overflow: TextOverflow.fade,
                                          ),
                                          maxLines: 6,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                SizedBox(
                                  child: Image.asset(
                                    "images/welcome04.png",
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Center(
                                        child: Text(
                                          "ONLINE STORES",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 22,
                                            overflow: TextOverflow.fade,
                                            letterSpacing: 8,
                                          ),
                                          maxLines: 6,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Center(
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            overflow: TextOverflow.fade,
                                          ),
                                          maxLines: 6,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                          height: MediaQuery.of(context).size.height * 0.8,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
