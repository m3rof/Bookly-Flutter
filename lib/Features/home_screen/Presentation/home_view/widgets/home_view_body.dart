
import 'package:bookly/Features/home_screen/Presentation/home_view/widgets/custom_appbar.dart';
import 'package:bookly/Features/home_screen/Presentation/home_view/widgets/show_books_horizontal.dart';
import 'package:flutter/material.dart';

import '../../../../../cores/Styles.dart';
import 'Search_Text_Field.dart';
import 'items_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const CustomAppBar(),
              SizedBox(
                height: 25,
              ),
              ShowBooksHorizontal(),
              const SizedBox(
                height: 51,
              ),
              Text('Best Seller',style: Styles.TextStyle18,),
              SizedBox(height: 20,),
              ItemsListView(),
            ],
          ),
        ),
      )
    );
  }
}

