import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/components/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';


class WelcomeQuiz extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
       return Scaffold(
         body:Stack(
           children: [
             SafeArea(
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                  Text(
                    "Let's Play Quiz, ",
                    style: Theme.of(context)
                        .textTheme.headline4
                        ?.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                   Spacer(),
                   InkWell(
                     onTap: (){},
                     child: Container(
                       width: double.infinity,
                       alignment: Alignment.center,
                       padding: EdgeInsets.all(kDefaultPadding*0.75),
                       decoration: BoxDecoration(
                         gradient: kPrimaryGradient,
                         borderRadius: BorderRadius.all(Radius.circular(12)),
                       ),
                       child: Text(
                           "Let's Start Quiz",
                         style: Theme.of(context)
                             .textTheme
                             .button
                             ?.copyWith(color: Colors.black),
                       ),
                     ),
                   ) ,
                                 Spacer(flex: 2,),
                               ],
                              ),
               ),
             ),
           ],
         ) ,
       ) ;
  }
}