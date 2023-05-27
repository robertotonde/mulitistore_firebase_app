import 'package:flutter/material.dart';
import 'package:multistore_firebase/presentation/screens/minor_screens/subcategory_products.dart';

class SlideBar extends StatelessWidget {
  final String mainCategName;
  const SlideBar({
    required this.mainCategName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.05,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.brown.withOpacity(0.2),
              borderRadius: BorderRadius.circular(50)),
          child: RotatedBox(
            quarterTurns: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                mainCategName == 'men'
                    ? const Text('')
                    : const Text(
                        ' << ',
                        style: style,
                      ),
                Text(
                  mainCategName.toUpperCase(),
                  style: style,
                ),
                mainCategName == 'men'
                    ? const Text('')
                    : const Text(
                        ' >>',
                        style: style,
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const style = TextStyle(
    color: Colors.brown,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 10);

// ignore: camel_case_types
class subCategoryModel extends StatelessWidget {
  final String mainCategName;
  final String subCategName;
  final String assetName;
  final String subCategLabel;
  const subCategoryModel({
    required this.mainCategName,
    required this.subCategName,
    required this.assetName,
    required this.subCategLabel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubCategoryProducts(
                      mainCategName: mainCategName,
                      subCategName: subCategName,
                    )));
      },
      child: Column(
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: Image(
              image: AssetImage(assetName),
            ),
          ),
          Text(subCategLabel,style: const TextStyle(fontSize: 11),)
        ],
      ),
    );
  }
}

class CategHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const CategHeaderLabel({super.key, required this.headerLabel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Text(
        headerLabel,
        style: const TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.5),
      ),
    );
  }
}
