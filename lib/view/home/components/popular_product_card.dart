import 'package:flutter/material.dart';

class PopularProductCard extends StatelessWidget {
  const PopularProductCard({Key? key});

  @override
  Widget build(BuildContext context) {
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
                    child: Text(
                      'Product $index',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
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
