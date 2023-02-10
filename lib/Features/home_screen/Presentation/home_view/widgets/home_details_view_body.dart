import 'package:bookly/Features/home_screen/Presentation/home_view/widgets/build_image.dart';
import 'package:bookly/cores/Styles.dart';
import 'package:bookly/cores/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cost_books.dart';
import 'home_details_appbar.dart';
import 'list_view_details.dart';

class HomeDetailsViewBody extends StatelessWidget {
  const HomeDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const HomeDetailsAppbar(),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * .32,
                        child: BuildImage()),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'The Jungle Book',
                      style: TextStyle(fontSize: 30),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Opacity(
                        opacity: .7,
                        child: Text('Rudyard Kipling',
                            style: Styles.TextStyle18.copyWith(
                                fontWeight: FontWeight.w500))),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        const Icon(
                          FontAwesomeIcons.solidStar,
                          color: Color(0xffFFDD4f),
                          size: 16,
                        ),
                        const SizedBox(
                          width: 6.3,
                        ),
                        const Text(
                          '4.8',
                          style: Styles.TextStyle16,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const Text(
                          '(2390)',
                          style: Styles.TextStyle14,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 37,
                    ),
                    const CostBooks(),
                    const  SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'You can also like',
                        style: Styles.TextStyle14,
                      ),
                    ),
                    const SizedBox(height: 16,),
                    const ListViewDetails()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

