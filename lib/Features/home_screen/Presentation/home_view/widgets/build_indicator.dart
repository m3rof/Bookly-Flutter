
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Widget BuildIndicator(int index) {
  return AnimatedSmoothIndicator(
      effect:ScrollingDotsEffect(
          dotColor: Colors.white,
          paintStyle: PaintingStyle.fill,
          activeDotColor: Colors.cyan,
          dotHeight: 10,
          dotWidth: 10
      ) ,
      activeIndex: index,
      count: 10);
}