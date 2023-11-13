import 'dart:async';
import 'package:flutter/material.dart';

class CarouselSlider extends StatefulWidget {
  const CarouselSlider({Key? key}) : super(key: key);

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  late final PageController pageController;
  int pageNo = 0;
  List<String> imageAssets = [
    'assets/Carousel_banner_5.jpg',
    'assets/Carousel_banner_1.jpg',
    'assets/Carousel_banner_2.jpg',
    'assets/Carousel_banner_3.jpg',
    'assets/Carousel_banner_4.jpg',

  ];

  Timer? carouselTimer;

  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == imageAssets.length - 1) {
        pageNo = 0;
      } else {
        pageNo++;
      }
      pageController.animateToPage(
        pageNo,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutCirc,
      );
    });
  }

  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    carouselTimer = getTimer();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onTapImage(int index) {
    // Add navigation logic here.
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("You tapped on image ${index + 1}"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          ),
        ],
      ),
    );
  }

  //Design layout
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 220,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) {
                pageNo = index;
                setState(() {});
              },
              itemBuilder: (_, index) {
                return AnimatedBuilder(
                  animation: pageController,
                  builder: (ctx, child) {
                    return child!;
                  },
                  child: GestureDetector(
                    onTap: () {
                      onTapImage(index);
                    },
                    onPanDown: (d) {
                      carouselTimer?.cancel();
                      carouselTimer = null;
                    },
                    onPanCancel: () {
                      carouselTimer = getTimer();
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imageAssets[index]), // Use AssetImage
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                );
              },
              itemCount: imageAssets.length,
            ),
          ),

          // about sa ....... icon
          const SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              imageAssets.length,
                  (index) => GestureDetector(
                child: Container(
                  margin: const EdgeInsets.all(2.0), // margin between . . .


                  child: Icon(
                    Icons.circle,
                    size: 10.0,
                    color: pageNo == index
                        ? Colors.indigoAccent
                        : Colors.grey.shade300,
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