import 'package:flutter/material.dart';
import 'package:my_ecommerce/component/main_header.dart';
import 'package:my_ecommerce/view/product/components/product_loading_grid.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            const MainHeader(),
            Expanded(
                child:
                ProductLoadingGrid())
          ],
        ));
  }
}
