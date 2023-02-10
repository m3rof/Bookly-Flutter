import 'package:bookly/Features/home_screen/Presentation/home_view/widgets/build_items.dart';
import 'package:flutter/material.dart';
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => BuildItems(),

      ),
    );
  }
}
