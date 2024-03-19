import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconStar extends StatelessWidget {
  const IconStar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff272E38),
        borderRadius: BorderRadius.circular(30.0),
      ),
      height: 50,
      width: 50,
      child: Transform.scale(
        scale: 0.3, // Adjust this value as needed
        child: SvgPicture.asset("images/icon-star.svg"),
      ),
    );
  }
}
