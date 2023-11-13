import 'package:flutter/material.dart';
import 'package:my_ecommerce/view/product/product_screen.dart';
import 'package:shimmer/shimmer.dart';

class CategoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildSection(context, 'assets/computer_parts_banner.jpg', 'Computer Parts'),
          _buildSection(context, 'assets/headphones.png', 'Headphones'),
          _buildSection(context, 'assets/laptop_banner.jpg', 'Laptops'),
          _buildSection(context, 'assets/printer_banner.jpg', 'Printer'),
          _buildSection(context, 'assets/camera_banner.jpg', 'Camera'),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context, String imagePath, String sectionTitle) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(16.0),
        onTap: () {
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 8.0,
                left: 8.0,
                child: Text(
                  sectionTitle,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Positioned(
                top: 80.0, //position to
                right: 10.0,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                  ),
                  child: Text('View More  '),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
