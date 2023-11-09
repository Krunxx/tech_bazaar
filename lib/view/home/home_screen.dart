import 'package:flutter/material.dart';
import 'package:my_ecommerce/component/main_header.dart';
import 'package:my_ecommerce/view/home/components/popular_category_card.dart';
import 'components/carousel_slider.dart';
import 'components/popular_product_card.dart';
import 'components/section_title.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Column(
          children: [
            MainHeader(),

            Expanded(
              child:
              CarouselSlider(),),

        SingleChildScrollView(
          child: Column(
            children: [
              SectionTitle(title: 'Popular Category'),
              PopularCategoryCard(),
              SectionTitle(title: 'Popular Product'),
              PopularProductCard(),
            ],
          ),
        ),
          ],
        )
    );
  }
}