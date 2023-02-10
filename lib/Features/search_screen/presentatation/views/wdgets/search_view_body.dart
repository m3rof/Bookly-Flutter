import 'package:bookly/cores/Styles.dart';
import 'package:flutter/material.dart';

import 'search_result_list.dart';
import 'search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [SearchTextField(),
            SizedBox(height: 16,),
            Align(alignment: Alignment.topLeft,child: Text('Search Result',style: Styles.TextStyle18,)),
            SizedBox(height: 16,),
            SearchResultListView()

          ],
        ),
    ),
      );
  }
}


