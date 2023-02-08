import 'package:bookly/Features/home_screen/Presentation/home_view/widgets/build_image.dart';
import 'package:bookly/cores/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'build_items.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return BuildItems();
        },
      ),
    );
  }
}


