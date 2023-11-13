import 'package:flutter/material.dart';

class PopularProductCard extends StatelessWidget {
  const PopularProductCard({Key? key});

  @override
  Widget build(BuildContext context) {
    List<String> productCaptions = [
      'CORSAIR',
      'Epson Ecotank',
      'Flashdrive',
      'HP Spectre',
    ];

    return SizedBox(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Material(
                elevation: 8,
                shadowColor: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300, width: 1),
                  ),

                  child: Center(

                    child: index == 0
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/CORSAIR_Vengeance.png',
                                width: 100,
                                height: 60,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                productCaptions[index],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )

                        : index == 1
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Image.asset  for local asset
                                  Image.asset(
                                    'assets/Epson_Ecotank.png',
                                    width: 100,
                                    height: 60,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    productCaptions[index],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )

                            : index == 2
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/San Disk.png',
                                        width: 100,
                                        height: 60,

                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        productCaptions[index],
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )

                    : index == 3
                  ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/HP_Spectre.png',
                        width: 100,
                        height: 60,

                      ),
                      const SizedBox(height: 8),
                      Text(
                        productCaptions[index],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                                : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        productCaptions[index],
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
