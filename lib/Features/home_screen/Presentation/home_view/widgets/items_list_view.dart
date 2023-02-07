import 'package:bookly/Features/home_screen/Presentation/home_view/widgets/build_image.dart';
import 'package:bookly/cores/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return BuildImage();
        },
      ),
    );
  }
}

class BuildItems extends StatelessWidget {
  const BuildItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildImage(),
        const SizedBox(
          width: 30,
        ),
        Column(
          children: [
            Text(
              'Harry Potter and the Goblet of Fire',
              style: TextStyle(fontSize: 20),
            )
          ],
        )
      ],
    );
  }
}
