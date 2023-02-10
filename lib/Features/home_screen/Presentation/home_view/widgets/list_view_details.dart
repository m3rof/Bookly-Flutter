
import 'package:flutter/material.dart';

import 'home_details_view_body.dart';
import 'image_list_view.dart';

class ListViewDetails extends StatelessWidget {
  const ListViewDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.16,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) =>
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ImageListView(),
              ),
        ),
      ),
    );
  }
}
