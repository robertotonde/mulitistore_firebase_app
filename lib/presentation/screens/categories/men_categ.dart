import 'package:flutter/material.dart';
import 'package:multistore_firebase/core/utilities/categ_list.dart';
import 'package:multistore_firebase/presentation/screens/minor_screens/subcategory_products.dart';

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
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text(
                      'men',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
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
                                            mainCategName: 'Men',
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
              ),
            ),
          ),
          //vertical sizized box should display
          Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
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
                        children:  [
                         const Text(
                            ' << ',
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 10),
                          ),
                          Text(
                            'men'.toUpperCase(),
                            style: const TextStyle(
                                color: Colors.brown,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 10),
                          ),
                      const     Text(
                            ' >>',
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 10),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
