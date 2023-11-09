import 'package:flutter/material.dart';
import 'package:my_ecommerce/view/home/home_screen.dart';
import 'package:my_ecommerce/view/product/product_screen.dart';
import 'package:shimmer/shimmer.dart';

class CategoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildCategoryImage("assets/computer_parts_banner.jpg", "Computer Parts", "View More"),
          _buildCategoryImage("assets/laptop_banner.jpg", "Laptop", "View More"),
          _buildCategoryImage("assets/camera_banner.jpg", "Digital Camera", "View More"),
          _buildCategoryImage("assets/headphones.png", "Headphones", "View More"),
          _buildCategoryImage("assets/printer_banner.jpg", "Printer", "View More"),
        ],
      ),
    );
  }

  Widget _buildCategoryImage(String imagePath, String title, String buttonText) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 500,
        height: 200,
        margin: EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Image.asset(
              imagePath,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover, // Adjust the image fit as needed
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            // VIEW MORE BUTTON
            Align(
              alignment: Alignment.centerRight,

              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {

                      MaterialPageRoute(
                        builder: (context) => const ProductScreen(),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange, // Faded white color
                  ),
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      color: Colors.black, // Black text color
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
