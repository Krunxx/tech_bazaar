import 'package:flutter/material.dart';
import 'package:my_ecommerce/view/home/components/popular_category_card.dart';

class PopularCategoryLoading extends StatelessWidget {
  const PopularCategoryLoading({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(

        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 5,

          itemBuilder: (context, index) => const PopularCategoryCard(),
        ),
      ),
    );
  }
}
