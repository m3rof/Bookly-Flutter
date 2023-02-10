
import 'package:bookly/cores/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            hintText: 'Search',
            suffixIcon: Opacity(
              opacity: .7,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 22,
                ),
              ),
            ),
            enabledBorder: OutInputBorder(),
            focusedBorder: OutInputBorder()
        ));
  }
}
