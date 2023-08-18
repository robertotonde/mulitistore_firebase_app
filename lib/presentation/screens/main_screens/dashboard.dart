import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:multistore_firebase/presentation/components/alert_dialog.dart';
import 'package:multistore_firebase/presentation/components/appbar_widgets.dart';
import 'package:multistore_firebase/presentation/screens/dasboard_components/edit_business.dart';
import 'package:multistore_firebase/presentation/screens/dasboard_components/manage_products.dart';
import 'package:multistore_firebase/presentation/screens/dasboard_components/my_store.dart';
import 'package:multistore_firebase/presentation/screens/dasboard_components/supplier_balance.dart';
import 'package:multistore_firebase/presentation/screens/dasboard_components/supplier_order.dart';
import 'package:multistore_firebase/presentation/screens/dasboard_components/supplier_statics.dart';

List<String> label = [
  'my store',
  'orders',
  'edit profile',
  'manage products',
  'balance',
  'statistics'
];

List<IconData> icons = [
  Icons.store,
  Icons.shop_2_outlined,
  Icons.edit,
  Icons.settings,
  Icons.attach_money,
  Icons.show_chart,
];

List<Widget> pages = const [
  MyStore(),
  SupplierOrders(),
  EditBusiness(),
  ManageProducts(),
  BalanceScreen(),
  StaticsScreen()
];

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarTitle(
          title: 'Dashboard',
        ),
        actions: [
          IconButton(
              onPressed: () {
                MyAlertDialog.showMyDialog(
                    context: context,
                    title: 'Log out',
                    content: 'are you sure to log out ',
                    tabNo: () {
                      Navigator.pop(context);
                    },
                    tabYes: () async {
                      await FirebaseAuth.instance.signOut();
                      Navigator.pop(context);
                      Navigator.pushReplacementNamed(
                          context, '/welcome_screen');
                    });
                // Navigator.pushReplacementNamed(context, '/welcome_screen');
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView.count(
          mainAxisSpacing: 50,
          crossAxisSpacing: 50,
          crossAxisCount: 2,
          children: List.generate(6, (index) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => pages[index]));
              },
              child: Card(
                elevation: 20,
                shadowColor: Colors.purpleAccent.shade200,
                color: Colors.blueGrey.withOpacity(0.7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      icons[index],
                      size: 50,
                      color: Colors.yellowAccent,
                    ),
                    Text(
                      label[index].toUpperCase(),
                      style: const TextStyle(
                          fontSize: 24,
                          color: Colors.yellowAccent,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2,
                          fontFamily: 'Acme'),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
