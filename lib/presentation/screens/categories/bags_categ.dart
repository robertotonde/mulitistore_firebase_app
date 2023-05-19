import 'package:flutter/material.dart';
import 'package:multistore_firebase/core/utilities/categ_list.dart';
import 'package:multistore_firebase/presentation/components/category_widgets.dart';


// List<String> imagetry = [
//   'images/try/image0.jpg'
//   'images/try/image1.jpg'
//   'images/try/image2.jpg'
//   'images/try/image3.jpg'
// ];
// List<String> labeletry = [
//   'shirt',
//   'jeans',
//   'shoes',
//   'jacket',
// ];

class BagsCategory extends StatelessWidget {
  const BagsCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategHeaderLabel(
                    headerLabel: 'Bags',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                        mainAxisSpacing: 70,
                        crossAxisSpacing: 15,
                        crossAxisCount: 3,
                        children: List.generate(bags.length, (index) {
                          return subCategoryModel(
                            mainCategName: 'Bags',
                            subCategName: bags[index],
                            assetName: 'images/bags/bags$index.jpg',
                            subCategLabel: bags[index],
                          );
                        })),
                  )
                ],
              ),
            ),
          ),
          //vertical sizized box should display
      const    Positioned(bottom: 0, right: 0, child: SlideBar(mainCategName: 'Bags',))
        ],
      ),
    );
  }
}

