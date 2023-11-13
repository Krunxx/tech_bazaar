import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/controller/dashboard_controller.dart';
import 'package:my_ecommerce/view/account/account_screen.dart';
import 'package:my_ecommerce/view/category/category_screen.dart';
import 'package:my_ecommerce/view/home/home_screen.dart';
import 'package:my_ecommerce/view/product/product_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GetBuilder<DashboardController>(
      builder: (controller) => Scaffold(
        body:  SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                const HomeScreen(), //When you click Home page
                const ProductScreen(), //When you click Category page
                //Kini is mu proceed sa category
                CategoryScreen(),
                const AccountScreen(), //When you click Account page

              ],
            ),
      ),
      bottomNavigationBar: Container(
      decoration: BoxDecoration(
      color:Colors.white,
      border: Border(
      top: BorderSide(
      color: Theme.of(context).colorScheme.secondary,
      width: 0.7
      )
      )
      ),
      child: SnakeNavigationBar.color(
      behaviour: SnakeBarBehaviour.floating,
      padding: const EdgeInsets.symmetric(vertical: 5),
      unselectedLabelStyle: const TextStyle(fontSize: 11),
      snakeViewColor: Theme.of(context).primaryColor,
      unselectedItemColor: Theme.of(context).colorScheme.secondary,
      showUnselectedLabels: true,
      currentIndex: controller.tabIndex,
      onTap: (val){
        controller.updateIndex(val);
      },
      items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Category'),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
      ],
      ),
      ),
      ),
    );
  }
}