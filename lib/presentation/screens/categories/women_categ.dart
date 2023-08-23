import 'package:flutter/material.dart';
import 'package:multistore_firebase/core/utilities/categ_list.dart';
import 'package:multistore_firebase/presentation/components/category_widgets.dart';

class WomenCategory extends StatelessWidget {
  const WomenCategory({super.key});

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
                    headerLabel: 'Women',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                        mainAxisSpacing: 70,
                        crossAxisSpacing: 15,
                        crossAxisCount: 3,
                        children: List.generate(women.length - 1, (index) {
                          return subCategoryModel(
                            mainCategName: 'Women',
                            subCategName: women[index + 1],
                            assetName: 'images/women/women$index.jpg',
                            subCategLabel: women[index + 1],
                          );
                        })),
                  )
                ],
              ),
            ),
          ),
          //vertical sizized box should display
          const Positioned(
              bottom: 0,
              right: 0,
              child: SlideBar(
                mainCategName: 'Women',
              ))
        ],
      ),
    );
  }
}
