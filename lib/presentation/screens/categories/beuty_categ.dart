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

class BeutyCategory extends StatelessWidget {
  const BeutyCategory({super.key});

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
                    headerLabel: 'Beuty',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                        mainAxisSpacing: 70,
                        crossAxisSpacing: 15,
                        crossAxisCount: 3,
                        children: List.generate(beauty.length, (index) {
                          return subCategoryModel(
                            mainCategName: 'Beuty',
                            subCategName: beauty[index],
                            assetName: 'images/beauty/beauty$index.jpg',
                            subCategLabel: beauty[index],
                          );
                        })),
                  )
                ],
              ),
            ),
          ),
          //vertical sizized box should display
      const    Positioned(bottom: 0, right: 0, child: SlideBar(mainCategName: 'Beuty',))
        ],
      ),
    );
  }
}

