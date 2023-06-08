import 'package:flutter/material.dart';
import 'package:multistore_firebase/presentation/components/Yellow_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/inapp/bgimage.jpg'),
                fit: BoxFit.cover)),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'WELCOME',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              const SizedBox(
                height: 120,
                width: 200,
                child: Image(image: AssetImage('images/inapp/logo.jpg')),
              ),
              const Text(
                'SHOP',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(50))),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'suppliers only',
                            style: TextStyle(
                                color: Colors.yellowAccent,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: const BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(50))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Image(
                                image: AssetImage('images/inapp/logo.jpg')),
                            YellowButton(
                              label: 'Log In',
                              onPressed: () {},
                              width: 0.25,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: YellowButton(
                                label: 'Sign Up',
                                onPressed: () {},
                                width: 0.25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: const BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: YellowButton(
                            label: 'Log In',
                            onPressed: () {},
                            width: 0.25,
                          ),
                        ),
                        YellowButton(
                          label: 'Sign Up',
                          onPressed: () {},
                          width: 0.25,
                        ),
                        const Image(image: AssetImage('images/inapp/logo.jpg')),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Container(
                  height: 80,
                  decoration: const BoxDecoration(color: Colors.white38),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GoogleFacebookLogin(
                        label: 'Google',
                        onPressed: () {},
                        child: const Image(
                            image: AssetImage('images/inapp/google.jpg')),
                      ),
                      GoogleFacebookLogin(
                        label: 'Facebook',
                        onPressed: () {},
                        child: const Image(
                            image: AssetImage('images/inapp/facebook.jpg')),
                      ),
                      GoogleFacebookLogin(
                        label: 'Guest',
                        onPressed: () {},
                        child: const Icon(
                          Icons.person,
                          size: 55,
                          color: Colors.blueAccent,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GoogleFacebookLogin extends StatelessWidget {
  final String label;
  final Function() onPressed;
  final Widget child;
  const GoogleFacebookLogin({
    super.key,
    required this.label,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onPressed,
        child: Column(
          children: [
            SizedBox(height: 50, width: 40, child: child),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
