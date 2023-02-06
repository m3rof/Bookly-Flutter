import 'package:bookly/cores/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'build_image.dart';
import 'build_indicator.dart';

class ShowBooksHorizontal extends StatefulWidget {
  const ShowBooksHorizontal({Key? key}) : super(key: key);

  @override
  State<ShowBooksHorizontal> createState() => _ShowBooksHorizontalState();
}

class _ShowBooksHorizontalState extends State<ShowBooksHorizontal> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: 250,
            autoPlay: false,
            autoPlayAnimationDuration: Duration(seconds: 2),
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
          itemCount: 10,
          itemBuilder: (context, index, realIndex) {
            return const BuildImage();
          },
        ),
        const SizedBox(height: 30,),
        BuildIndicator(activeIndex)
      ],
    );
  }
}

