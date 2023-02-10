import 'package:bookly/Features/home_screen/Presentation/home_view/widgets/custom_appbar.dart';
import 'package:bookly/Features/home_screen/Presentation/home_view/widgets/show_books_horizontal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../cores/Styles.dart';
import 'Search_Text_Field.dart';
import 'items_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 30),
                     child:const CustomAppBar(),
                   ),
                 const SizedBox(
                    height: 25,
                  ),
                 const ShowBooksHorizontal(),
                  const SizedBox(
                    height: 51,
                  ),
                 const Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Best Seller',style: Styles.TextStyle18,),
                  ),
                 const SizedBox(height: 20,),
                  //
                ],
              ),
            ),
            SliverFillRemaining(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 0),
                child: ItemsListView(),
              ),
            )
          ],
        )

      )
    );
  }
}

