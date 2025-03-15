// import 'package:flutter/material.dart';
// import 'package:sunglasses/common/colors.dart';
// import 'package:sunglasses/common/menu_icon.dart';
// import 'package:sunglasses/home/product_tile.dart';

// import '../product_details/product_details.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;

//     return Column(
//       children: [
//         // Top Space for Notifications in iPhone
//         const SizedBox(height: 70),
//         // Menu Row
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 25),
//           child: const Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               MenuIcon(width: 30, height: 20),
//               Icon(
//                 Icons.shopping_bag_outlined,
//                 size: 30,
//                 color: Colors.white,
//               ),
//             ],
//           ),
//         ),
//         Expanded(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 const SizedBox(height: 50),
//                 SizedBox(
//                   width: double.infinity,
//                   height: 450,
//                   child: Stack(
//                     children: [
//                       Positioned(
//                         right: 0,
//                         top: 0,
//                         bottom: 50,
//                         child: ClipRRect(
//                           borderRadius: const BorderRadius.only(
//                             topLeft: Radius.circular(50),
//                             bottomLeft: Radius.circular(50),
//                           ),
//                           child: Image.asset(
//                             'assets/home.jpg',
//                             height: 400,
//                             width: screenWidth * 0.75,
//                             // color: Colors.red,
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         right: 30,
//                         bottom: 0,
//                         child: GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute<void>(
//                                 builder: (BuildContext context) =>
//                                     const ProductDetails(),
//                               ),
//                             );
//                           },
//                           child: Container(
//                             width: 70,
//                             height: 70,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(30),
//                               color: GlassesColors.lightYellow,
//                             ),
//                             child: const Icon(
//                               Icons.shopping_bag_rounded,
//                               size: 30,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         left: 0,
//                         bottom: 80,
//                         child: Container(
//                           padding: const EdgeInsets.symmetric(horizontal: 30),
//                           child: const Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Sun Glasses',
//                                 textAlign: TextAlign.left,
//                                 style: TextStyle(
//                                   inherit: false,
//                                   fontSize: 25,
//                                   fontWeight: FontWeight.normal,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               SizedBox(height: 5),
//                               Text(
//                                 'Cat-Eye',
//                                 textAlign: TextAlign.left,
//                                 style: TextStyle(
//                                   inherit: false,
//                                   fontSize: 52,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 ListView.builder(
//                   shrinkWrap: true,
//                   padding: EdgeInsets.zero,
//                   physics: const NeverScrollableScrollPhysics(),
//                   itemCount: 5,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.only(bottom: 8),
//                       child: ProductTile(
//                         index: index,
//                         assetPath: 'assets/glasses/glasses${index + 1}.png',
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'dart:math' as math;
import 'package:sunglasses/common/colors.dart';
import 'package:sunglasses/common/menu_icon.dart';
import 'package:sunglasses/home/product_tile.dart';

import '../product_details/product_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        // Top Space for Notifications in iPhone
        const SizedBox(height: 70),
        // Menu Row with animations
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MenuIcon(width: 30, height: 20)
                  .animate(delay: 200.ms)
                  .fadeIn(duration: 1200.ms, curve: Curves.easeOut)
                  .slideX(begin: -0.2, end: 0, curve: Curves.easeOutQuint),
              Icon(
                Icons.shopping_bag_outlined,
                size: 30,
                color: Colors.white,
              )
                  .animate(delay: 200.ms)
                  .fadeIn(duration: 1200.ms, curve: Curves.easeOut)
                  .slideX(begin: 0.2, end: 0, curve: Curves.easeOutQuint),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                SizedBox(
                  width: double.infinity,
                  height: 450,
                  child: Stack(
                    children: [
                      // Hero image with animation
                      Positioned(
                        right: 0,
                        top: 0,
                        bottom: 50,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                          child: Image.asset(
                            'assets/home.jpg',
                            height: 400,
                            width: screenWidth * 0.75,
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                          .animate(delay: 300.ms)
                          .fadeIn(duration: 1200.ms, curve: Curves.easeOut)
                          .slideX(
                              begin: 0.2, end: 0, curve: Curves.easeOutQuint),

                      // Shopping bag button with bounce animation
                      Positioned(
                        right: 30,
                        bottom: 0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration:
                                    const Duration(milliseconds: 500),
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        FadeTransition(
                                  opacity: animation,
                                  child: const ProductDetails(),
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: GlassesColors.lightYellow,
                            ),
                            child: const Icon(
                              Icons.shopping_bag_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                          .animate(delay: 800.ms)
                          .scale(
                            begin: const Offset(0.8, 0.8),
                            end: const Offset(1, 1),
                            duration: 1200.ms,
                            curve: Curves.easeOut,
                          )
                          .then()
                          .effect(
                            delay: 1.seconds,
                            duration: 2.seconds,
                            builder: (context, value, child) =>
                                Transform.translate(
                              offset:
                                  Offset(0, 3 * math.sin(value * 2 * math.pi)),
                              child: child,
                            ),
                            curve: Curves.easeInOut,
                            effects: [],
                            autoPlay: true,
                            onComplete: (controller) => controller.repeat(),
                          ),

                      // Title text with staggered animation
                      Positioned(
                        left: 0,
                        bottom: 80,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Sun Glasses',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  inherit: false,
                                  fontSize: 25,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              )
                                  .animate(delay: 400.ms)
                                  .fadeIn(
                                      duration: 1200.ms, curve: Curves.easeOut)
                                  .slideX(
                                      begin: -0.2,
                                      end: 0,
                                      curve: Curves.easeOutQuint),
                              const SizedBox(height: 5),
                              const Text(
                                'Cat-Eye',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  inherit: false,
                                  fontSize: 52,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                                  .animate(delay: 500.ms)
                                  .fadeIn(
                                      duration: 1200.ms, curve: Curves.easeOut)
                                  .slideX(
                                      begin: -0.2,
                                      end: 0,
                                      curve: Curves.easeOutQuint),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Product list with staggered animations
                ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: ProductTile(
                        index: index,
                        assetPath: 'assets/glasses/glasses${index + 1}.png',
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
