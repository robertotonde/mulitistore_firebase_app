import 'package:flutter/material.dart';

import '../../../core/utilities/categ_list.dart';
import '../minor_screens/subcategory_products.dart';

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

class MenCategory extends StatelessWidget {
  const MenCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(30.0),
          child: Text(
            'men',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.5),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.68,
          child: GridView.count(
              mainAxisSpacing: 70,
              crossAxisSpacing: 15,
              crossAxisCount: 3,
              children: List.generate(men.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SubCategoryProducts(
                                  subCategName: men[index],
                                )));
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                        width: 70,
                        child: Image(
                          image: AssetImage('images/men/men$index.jpg'),
                        ),
                      ),
                      Text(men[index])
                    ],
                  ),
                );
              })),
        )
      ],
    );
  }
}
