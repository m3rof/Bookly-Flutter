
import 'package:bookly/cores/constants.dart';
import 'package:flutter/material.dart';

class ImageListView extends StatelessWidget {
  const ImageListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112,width: 70,
      child: Container(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            child: Image.network(
              testImage,
              fit: BoxFit.fill,
            ),
          )),
    );
  }
}
