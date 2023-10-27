import 'package:flutter/material.dart';

class CarouselSlider extends StatefulWidget {
  const CarouselSlider({super.key});

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  late final PageController pageController;

  @override
  void initState(){
    pageController = PageController();
    super.initState();
  }
  @override
  void dispose(){
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            child: PageView.builder(
                controller: pageController,
                itemBuilder: (_, index) {
                  return AnimatedBuilder(
                      animation: pageController,
                      builder: (ctx, child)
                      {
                        return child!;
                      },

                    child: Container(
                      height: 500,
                      color: Colors.amberAccent,
                      margin: const EdgeInsets.all(24.0),
                    ),
                  );
                },
              itemCount: 5,
            ),
          )
        ],
      ),
    );
  }
}

