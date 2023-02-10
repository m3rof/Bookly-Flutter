import 'package:bookly/Features/search_screen/presentatation/views/search_view.dart';
import 'package:bookly/cores/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Image(image: AssetImage(logoAssets), height: 50, width: 50,),
        const Spacer(),
        IconButton(
            onPressed: () {
              Get.to(
                  SearchScreen(), duration: Duration(seconds: 2), transition:Transition.leftToRight);
            }, icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 24,))
      ],
    );
  }
}
