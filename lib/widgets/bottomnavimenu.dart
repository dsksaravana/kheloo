import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class BottomNavBarMenu extends StatelessWidget {
  const BottomNavBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBackgroudColour,
      child: Row(
        children: [
          Positioned(
              left: 0,
              child: ClipPath(
                  clipper: LeftClipper(),
                  child: const BottomMenu(
                      sidemenu: true,
                      color: appColor,
                      icon: Icons.support_agent,
                      padding: EdgeInsets.only(left: 15),
                      text: 'Support',
                      crossAxisAlignment: CrossAxisAlignment.start))),
          const Expanded(
            child: Scrollbar(
                thickness: 10,
                thumbVisibility: true,
                radius: Radius.circular(20),
                scrollbarOrientation: ScrollbarOrientation.left,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BottomMenu(
                        icon: Icons.sports_baseball,
                        text: 'Sports',
                      ),
                      BottomMenu(
                        icon: Icons.monetization_on,
                        text: 'Live Casino',
                      ),
                      BottomMenu(
                        icon: Icons.support_agent,
                        text: 'E-Sports',
                      ),
                      BottomMenu(
                        icon: Icons.scatter_plot,
                        text: 'Slots',
                      ),
                      BottomMenu(
                        icon: Icons.card_giftcard,
                        text: 'Lottery',
                      )
                    ],
                  ),
                )),
          ),
          Positioned(
              right: 0,
              child: ClipPath(
                  clipper: RightClipper(),
                  child: const BottomMenu(
                      sidemenu: true,
                      color: appColor,
                      icon: Icons.person_2,
                      padding: EdgeInsets.only(right: 15),
                      text: 'Register',
                      crossAxisAlignment: CrossAxisAlignment.end))),
        ],
      ),
    );
  }
}

class LeftClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width / 1.5, 0.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class RightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(size.width, 0.0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(size.width / 2.9, 0.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class BottomMenu extends StatelessWidget {
  final String text;
  final IconData? icon;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final CrossAxisAlignment crossAxisAlignment;
  final bool sidemenu;
  const BottomMenu(
      {super.key,
      required this.text,
      required this.icon,
      this.padding,
      this.color = Colors.transparent,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.sidemenu = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: sidemenu ? 100 : 80,
      padding: padding,
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Icon(
            icon,
            size: 40,
            color: sidemenu ? Colors.black : Colors.white,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: sidemenu ? Colors.black : Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
