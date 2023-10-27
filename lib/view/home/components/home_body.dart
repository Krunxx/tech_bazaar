import 'dart:async';

import 'package:flutter/material.dart';

class CarouselSlider extends StatefulWidget {
  const CarouselSlider({super.key});

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  late final PageController pageController;
  int pageNo =0;

  Timer? carouselTimer;

  Timer getTimer(){
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == 4){
        pageNo = 0;
      }
      pageController.animateToPage(
        pageNo,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutCirc,
      );
      pageNo++;
    });
  }

  @override
  void initState(){
    pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    carouselTimer = getTimer();
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
            height: 200,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) {
                pageNo = index;
                setState(() {

                });
              },
              itemBuilder: (_, index) {
                return AnimatedBuilder(
                  animation: pageController,
                  builder: (ctx, child)
                  {
                    return child!;
                  },

                  child: GestureDetector(
                    onTap: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Hello you tapped at ${index + 1}"),
                        ),
                      );
                    },
                    onPanDown: (d){
                      carouselTimer?.cancel();
                      carouselTimer = null;
                    },
                    onPanCancel: (){
                      carouselTimer = getTimer();
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        right: 8, left: 8, top: 36, bottom: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: Colors.amberAccent,
                      ),
                    ),
                  ),
                );
              },
              itemCount: 5,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
            5,
                (index) => GestureDetector(
                  child: Container(
                  margin: const EdgeInsets.all(2.0),
                  width: 8.0,
                  child: Icon(
                      Icons.circle,
                      size: 12.0,
                    color: pageNo == index?
                    Colors.indigoAccent:
                    Colors.grey.shade300 ,
                  ),
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}

