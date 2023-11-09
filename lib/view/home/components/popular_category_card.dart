import 'package:flutter/material.dart';

class PopularCategoryCard extends StatelessWidget {
 const PopularCategoryCard({Key? key});

 @override
 Widget build(BuildContext context) {
  return SizedBox(
   height: 120, // Adjust the height as needed
   child: Padding(
    padding: const EdgeInsets.only(left: 12.0), // Adjust the left margin as needed
    child: ListView.builder(
     scrollDirection: Axis.horizontal,
     itemCount: 4,
     itemBuilder: (BuildContext context, int index) {
      return Padding(
       padding: EdgeInsets.only(right: 16.0), // Adjust the right margin to add space between cards
       child: Material(
        elevation: 8,
        shadowColor: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
        child: Container(
         width: 250, // Adjust the width as needed

         decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
           image: AssetImage(_getImagePath(index)),
           fit: BoxFit.cover,
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

 String _getImagePath(int index) {
  switch (index) {
   case 0:
    return 'assets/computer_parts_banner.jpg';
   case 1:
    return 'assets/headphones.png';
   case 2:
    return 'assets/printer_banner.jpg';
   case 3:
    return 'assets/laptop_banner.jpg';
   default:
    return 'assets/default_image.jpg';
  }
 }
}
