// import 'package:flutter/material.dart';
// import 'package:sunglasses/common/colors.dart';
// import 'package:sunglasses/home/home_page.dart';

// class LandingPage extends StatelessWidget {
//   const LandingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Positioned.fill(
//           child: Image.asset(
//             'assets/landing.jpg',
//             fit: BoxFit.cover,
//           ),
//         ),
//         Positioned(
//           left: 0,
//           right: 0,
//           bottom: 1,
//           child: Container(
//             height: 340,
//             //color: Colors.green.withOpacity(0.5),
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   'Glass \nfor eye',
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     inherit: false,
//                     fontSize: 75,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(height: 40),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute<void>(
//                             builder: (BuildContext context) => const HomePage(),
//                           ),
//                         );
//                       },
//                       child: Container(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 22, horizontal: 30),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(35),
//                           color: GlassesColors.lightYellow,
//                         ),
//                         child: const Text(
//                           'Start shopping',
//                           style: TextStyle(
//                             inherit: false,
//                             fontSize: 22,
//                             fontWeight: FontWeight.w500,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 20),
//                     Container(
//                       padding: const EdgeInsets.all(20),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(40),
//                         color: Colors.white,
//                       ),
//                       child: const Icon(
//                         Icons.arrow_forward_rounded,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
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
import 'package:sunglasses/animations.dart';
import 'package:sunglasses/common/colors.dart';
import 'package:sunglasses/home/home_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image with subtle zoom animation
        Positioned.fill(
          child: Image.asset(
            'assets/landing.jpg',
            fit: BoxFit.cover,
          )
              .animate()
              .scale(
                duration: 8.seconds,
                begin: const Offset(1.0, 1.0),
                end: const Offset(1.05, 1.05),
                curve: Curves.easeInOut,
              )
              .then()
              .scale(
                duration: 8.seconds,
                begin: const Offset(1.05, 1.05),
                end: const Offset(1.0, 1.0),
                curve: Curves.easeInOut,
              )
              .then(delay: 1.seconds)
              .effect(
                onComplete: (controller) => controller.repeat(),
              ),
        ),
        // Content
        Positioned(
          left: 0,
          right: 0,
          bottom: 1,
          child: Container(
            height: 340,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title text with separate word animations
                const Text(
                  'Glass \nfor eye',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    inherit: false,
                    fontSize: 75,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ).animate().effects(Animations.fadeInSlideUp(delay: 300.ms)),
                const SizedBox(height: 40),
                // Buttons row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Start shopping button
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            transitionDuration:
                                const Duration(milliseconds: 800),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    FadeTransition(
                              opacity: animation,
                              child: const HomePage(),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 22, horizontal: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: GlassesColors.lightYellow,
                        ),
                        child: const Text(
                          'Start shopping',
                          style: TextStyle(
                            inherit: false,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                        .animate()
                        .effects(Animations.fadeInSlideUp(delay: 600.ms)),
                    const SizedBox(width: 20),
                    // Arrow button with pulse animation
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.black,
                      ),
                    )
                        .animate()
                        .effects(Animations.fadeInSlideUp(delay: 700.ms))
                        .then()
                        .scale(
                          duration: 1.seconds,
                          begin: const Offset(1.0, 1.0),
                          end: const Offset(1.1, 1.1),
                          curve: Curves.easeInOut,
                        )
                        .then()
                        .scale(
                          duration: 1.seconds,
                          begin: const Offset(1.1, 1.1),
                          end: const Offset(1.0, 1.0),
                          curve: Curves.easeInOut,
                        )
                        .then()
                        .effect(
                          onComplete: (controller) => controller.repeat(),
                        ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
