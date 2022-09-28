import 'dart:ui';

import 'package:coffe/componants/componants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsScreen extends  StatelessWidget {
   DetailsScreen({Key? key}) : super(key: key);
   // ignore: prefer_typing_uninitialized_variables
   static var screenHeight;
   // ignore: prefer_typing_uninitialized_variables
   static var screenWidth;

  @override
  Widget build(BuildContext context)
  {
    screenHeight=MediaQuery.of(context).size.height;
    screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:
          [
            Expanded(
              child: Stack(
                children:
                [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/co.jpg",),
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:
                      [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 10,
                              sigmaY: 10,
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              width: double.infinity,
                              height: screenHeight*0.2-20,
                              decoration: BoxDecoration(
                                color: Colors.brown.withOpacity(0.4)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                [
                                  Row(
                                    children:
                                    [
                                     Expanded(
                                         child:
                                         Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children:
                                           [
                                             Column(
                                               crossAxisAlignment: CrossAxisAlignment.start,
                                               children:
                                                [
                                                  const Text(
                                                     'Cappuccino',
                                                   style: TextStyle(
                                                     color: Colors.white,
                                                     fontSize: 20,
                                                     fontWeight: FontWeight.w300,
                                                   ),
                                                 ),
                                                  const SizedBox(
                                                   height: 5,
                                                 ),
                                                  Text(
                                                   'Without Milk',
                                                 style: TextStyle(
                                                   color: Colors.grey[400],
                                                   fontSize: 12,
                                                 ),
                                                 ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children:
                                                    const [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.deepOrange,
                                                      ),
                                                      Text(
                                                        '45.0',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                               ],
                                             ),
                                           ],
                                         ),
                                     ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children:
                     [
                       const Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,

                        ),
                      ),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children:
                         [
                           const Text(
                             'The cappuccino is a coffe based drink made',
                           style: TextStyle(
                             color: Colors.grey,
                           ),
                           ),
                           const SizedBox(
                             height: 10,
                           ),
                           Row(
                             children:
                             const[
                               Text(
                                 'Primarily from espresso',
                               style: TextStyle(
                                 color: Colors.grey
                               ),
                               ),
                               Text(
                                 '... Read More',
                                 style: TextStyle(
                                     color: Colors.deepOrange,
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                       const Text(
                         'Size',
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 20,
                       ),
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children:
                         [
                           MaterialButton(
                               onPressed: (){},
                             shape: RoundedRectangleBorder(
                               side: const BorderSide(
                                 color: Colors.deepOrange
                               ),
                               borderRadius: BorderRadius.circular(10),
                             ),
                             child: const Text(
                               'S',
                               style: TextStyle(
                                 color: Colors.deepOrange
                               ),
                             ),
                           ),
                           MaterialButton(
                             onPressed: (){},
                             color: Colors.black26,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10),
                             ),
                             child: const Text(
                               'M',
                               style: TextStyle(
                                   color: Colors.deepOrange
                               ),
                             ),
                           ),
                           MaterialButton(
                             onPressed: (){},
                             color: Colors.black26,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10),
                             ),
                             child: const Text(
                               'L',
                               style: TextStyle(
                                   color: Colors.deepOrange
                               ),
                             ),
                           ),
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children:
                         [
                           Column(
                             children: [
                               const Text(
                                 'Price',
                                 style: TextStyle(
                                   color: Colors.grey,
                                 ),
                               ),
                               const SizedBox(
                                 height: 5,
                               ),
                               Row(
                                 children:
                                 const [
                                          Text(
                                            '\$\t',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.deepOrange
                                            ),
                                          ),
                                   Text(
                                     '40',
                                     style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         color: Colors.grey,
                                     ),
                                   ),
                                 ],
                               ),
                             ],
                           ),
                           defaultButton(
                             width: 250,
                             backGround: Colors.deepOrange,
                             function: (){},
                             text: 'Buy Now',
                             radius: 20,
                             colorText: Colors.white,
                           ),
                         ],
                       ),
                    ],
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
