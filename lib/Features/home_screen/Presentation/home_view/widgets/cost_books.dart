
import 'package:bookly/cores/Styles.dart';
import 'package:flutter/material.dart';

class CostBooks extends StatelessWidget {
  const CostBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            padding:const EdgeInsets.symmetric(vertical: 12,),
            child: Text('19.99€',style: Styles.TextStyle18.copyWith(color: Colors.black),textAlign: TextAlign.center,),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:const BorderRadius.only(topLeft:Radius.circular(20),bottomLeft: Radius.circular(20))
            ),
          ),
        ),

        Expanded(
          child: Container(
            padding:const EdgeInsets.symmetric(vertical: 13,),
            child: Text('Free preview',style: Styles.TextStyle16,textAlign: TextAlign.center),
            decoration:const BoxDecoration(
                color:const Color(0xffEF8262),
                borderRadius:const BorderRadius.only(topRight:Radius.circular(20),bottomRight: Radius.circular(20))
            ),
          ),
        )
      ],
    );
  }
}
