
import 'package:bookly/Features/home_screen/Presentation/home_view/widgets/build_image.dart';
import 'package:bookly/cores/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeDetailsViewBody extends StatelessWidget {
  const HomeDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
             const HomeDetailsAppbar(),
              SizedBox(height: 10,),
              SizedBox(height: MediaQuery.of(context).size.height*.32,child: BuildImage()),
              SizedBox(height: 40,),
              Text('The Jungle Book',style: TextStyle(fontSize: 30),),
              SizedBox(height: 6,),
              Opacity(opacity: .7,child: Text('Rudyard Kipling',style: Styles.TextStyle18.copyWith(fontWeight: FontWeight.w500))),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(FontAwesomeIcons.solidStar,color: Color(0xffFFDD4f),size: 16,),
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
        ),
      ),
    );
  }
}

class HomeDetailsAppbar extends StatelessWidget {
  const HomeDetailsAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon:const Icon(Icons.close_outlined)),
        IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_cart_outlined))
      ],
    );
  }
}

