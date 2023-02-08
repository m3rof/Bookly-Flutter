
import 'package:bookly/Features/home_screen/Presentation/home_view/home_details_view.dart';
import 'package:bookly/cores/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'build_image.dart';

class BuildItems extends StatelessWidget {
  const BuildItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(HomeDetailsView(),transition: Transition.upToDown,duration:const Duration(seconds: 2));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
           const SizedBox(
                height: 105,
                width: 75,
                child: BuildImage()),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.5,
                    child:const Text(
                      'Harry Potter and the Goblet of Fire ',
                      style: TextStyle(fontSize: 20),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text('J.K. Rowling',style: Styles.TextStyle14,),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text('19.99 €',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      const Spacer(),
                      Icon(FontAwesomeIcons.solidStar,color: Color(0xffFFDD4f),size: 16,),
                      const SizedBox(
                        width: 6.3,
                      ),
                      Text('4.8',style: Styles.TextStyle16,),
                      const  SizedBox(
                        width: 3,
                      ),
                      const  Text('(2390)',style: Styles.TextStyle14,)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}