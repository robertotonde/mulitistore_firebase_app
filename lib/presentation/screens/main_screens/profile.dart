// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:multistore_firebase/presentation/components/alert_dialog.dart';
import 'package:multistore_firebase/presentation/components/appbar_widgets.dart';
import 'package:multistore_firebase/presentation/screens/customer_screens/customer_orders.dart';
import 'package:multistore_firebase/presentation/screens/customer_screens/wishlist.dart';
import 'package:multistore_firebase/presentation/screens/main_screens/cart.dart';

class ProfileScreen extends StatefulWidget {
  final String documentId;
  const ProfileScreen({super.key, required this.documentId});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('customers');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(widget.documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return const Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Scaffold(
            backgroundColor: Colors.grey.shade300,
            body: Stack(
              children: [
                Container(
                  height: 230,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.yellow, Colors.brown])),
                ),
                CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      centerTitle: true,
                      pinned: true,
                      elevation: 0,
                      backgroundColor: Colors.white,
                      expandedHeight: 140,
                      flexibleSpace: LayoutBuilder(
                        builder: (context, constraints) {
                          return FlexibleSpaceBar(
                            title: AnimatedOpacity(
                              duration: const Duration(milliseconds: 200),
                              opacity:
                                  constraints.biggest.height <= 120 ? 1 : 0,
                              child: const Text(
                                'Account',
                                style: TextStyle(color: Colors.black54),
                              ),
                            ),
                            background: Container(
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [Colors.yellow, Colors.brown])),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, left: 30),
                                child: Row(
                                  children: [
                                    data['profileimage'] == ''
                                        ? const CircleAvatar(
                                            radius: 50,
                                            backgroundImage: AssetImage(
                                                'images/inapp/guest.jpg'))
                                        : CircleAvatar(
                                            radius: 50,
                                            backgroundImage: NetworkImage(
                                                data['profileimage']),
                                          ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Text(
                                          data['name'] == ''
                                              ? 'guest'.toUpperCase()
                                              : data['name'].toUpperCase(),
                                          style: const TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SliverToBoxAdapter(
                        child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomLeft: Radius.circular(30))),
                                child: TextButton(
                                  child: SizedBox(
                                    height: 40,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: const Center(
                                      child: Text(
                                        'Cart',
                                        style: TextStyle(
                                            color: Colors.yellow, fontSize: 24),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const CartScreen(
                                                  back: AppBarBackButton(),
                                                )));
                                  },
                                ),
                              ),
                              Container(
                                color: Colors.yellow,
                                child: TextButton(
                                  child: SizedBox(
                                    height: 40,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: const Center(
                                      child: Text(
                                        'orders',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 24),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const CustomerOrders()));
                                  },
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30),
                                        bottomRight: Radius.circular(30))),
                                child: TextButton(
                                  child: SizedBox(
                                    height: 40,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: const Center(
                                      child: Text(
                                        'Wishlist',
                                        style: TextStyle(
                                            color: Colors.yellow, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const WishlistScreen()));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.grey.shade300,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 150,
                                child: Image(
                                    image: AssetImage('images/inapp/logo.jpg')),
                              ),
                              const ProfileHeaderLabel(
                                headerLabel: '  Account Info ',
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 260,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Column(
                                    children: [
                                      RepeatedListTile(
                                        tittle: 'Email Adress',
                                        subtittle: data['email'] == ''
                                            ? 'guest@gmail.com'
                                            : data['email'],
                                        icon: Icons.email,
                                      ),
                                      const YellowDivider(),
                                      RepeatedListTile(
                                        tittle: 'Phone no',
                                        subtittle: data['phone'] == ''
                                            ? '07XXXXXXX'
                                            : data['phone'],
                                        icon: Icons.phone,
                                      ),
                                      const YellowDivider(),
                                      RepeatedListTile(
                                        tittle: 'Adress',
                                        subtittle: data['address'] == ''
                                            ? 'san andreas'
                                            : data['address'],
                                        icon: Icons.location_pin,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const ProfileHeaderLabel(
                                headerLabel: ' Account Settings  ',
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 260,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Column(
                                    children: [
                                      RepeatedListTile(
                                        tittle: 'Edit Profile',
                                        subtittle: '',
                                        icon: Icons.edit,
                                        onPressed: () {},
                                      ),
                                      const YellowDivider(),
                                      RepeatedListTile(
                                        tittle: 'Change password',
                                        subtittle: '',
                                        icon: Icons.lock,
                                        onPressed: () {},
                                      ),
                                      const YellowDivider(),
                                      RepeatedListTile(
                                        tittle: 'Log Out',
                                        subtittle: '',
                                        icon: Icons.logout,
                                        onPressed: () async {
                                          MyAlertDialog.showMyDialog(
                                              context: context,
                                              title: 'Log out',
                                              content:
                                                  'are you sure to log out ',
                                              tabNo: () {
                                                Navigator.pop(context);
                                              },
                                              tabYes: () async {
                                                await FirebaseAuth.instance
                                                    .signOut();
                                                Navigator.pop(context);
                                                Navigator.pushReplacementNamed(
                                                    context, '/welcome_screen');
                                              });
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ],
            ),
          );
          // Text("Full Name: ${data['full_name']} ${data['last_name']}");
        }

        return const Center(
          child: CircularProgressIndicator(
            color: Colors.purple,
          ),
        );
      },
    );
  }
}

class YellowDivider extends StatelessWidget {
  const YellowDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Divider(
        color: Colors.yellow,
        thickness: 1,
      ),
    );
  }
}

class RepeatedListTile extends StatelessWidget {
  final String tittle;
  final String subtittle;
  final IconData icon;
  final Function()? onPressed;
  const RepeatedListTile({
    super.key,
    required this.tittle,
    this.subtittle = '',
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        title: Text(tittle),
        subtitle: Text(subtittle),
        leading: Icon(icon),
      ),
    );
  }
}

class ProfileHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const ProfileHeaderLabel({
    super.key,
    required this.headerLabel,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Text(
            headerLabel,
            style: const TextStyle(
                color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
