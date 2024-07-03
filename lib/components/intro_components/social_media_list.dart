import 'package:flutter/material.dart';
import 'package:portfolio/components/intro_components/social_media_coloumn.dart';
import 'package:portfolio/components/model_components/typewriter_text.dart';
import '../../../res/constants.dart';

class SocialMediaIconList extends StatelessWidget {
  const SocialMediaIconList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Column(
            children: [
              const Spacer(),
              RotatedBox(
                  quarterTurns: -3,
                  child: TypewriterText(
                    text: "HELLO  WORLD",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                  )),
              Container(
                height: size.height * 0.09,
                width: 3,
                margin:
                    const EdgeInsets.symmetric(vertical: defaultPadding * 0.5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(defaultPadding)),
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:portfolio/components/intro_components/social_media_coloumn.dart';
// import '../../../res/constants.dart';
// class SocialMediaIconList extends StatelessWidget {
//   const SocialMediaIconList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final size=MediaQuery.sizeOf(context);
//     return TweenAnimationBuilder(tween: Tween(begin: 0.0,end: 1.0), duration: const Duration(milliseconds: 200), builder: (context, value, child) {
//       return Transform.scale(scale: value,
//         child:  Column(
//           children: [
//             const Spacer(),
//             RotatedBox(
//               quarterTurns: -3,
//               child: Text(''
//                   'Follow Me',style: Theme.of(context).textTheme.titleSmall!.copyWith(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w500,
//               ),),
//             ),
//             Container(
//               height: size.height*0.06,
//               width: 3,
//               margin: const EdgeInsets.symmetric(vertical: defaultPadding * 0.5),
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(defaultPadding)
//               ),
//             ),
//             const SocialMediaIconColumn(),
//             const Spacer(),
//           ],
//         ),
//       );
//     },);
//   }
// }
//
