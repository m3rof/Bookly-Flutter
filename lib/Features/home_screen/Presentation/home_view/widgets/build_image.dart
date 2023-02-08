
import 'package:bookly/cores/constants.dart';
import 'package:flutter/material.dart';

class BuildImage extends StatelessWidget {
  const BuildImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Image.network(
              testImage,
              fit: BoxFit.fill,
            ),
          )),
    );
  }
}
