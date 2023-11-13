import 'package:flutter/material.dart';

import '../../component/main_header.dart';
import 'components/category_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
             MainHeader(),
            Expanded(
                child:
                CategoryCard())
          ],
        ));
  }
}
