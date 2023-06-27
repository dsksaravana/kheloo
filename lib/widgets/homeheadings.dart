import 'package:flutter/material.dart';

import '../utils/gradient.dart';

class HomeHeading extends StatelessWidget {
  final String headtext;
  const HomeHeading({super.key, required this.headtext});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 5),
        padding: const EdgeInsets.only(bottom: 7.0),
        decoration:
            gradientBottomBorder(), //             <--- BoxDecoration here
        child: GradientText(
          headtext,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.yellow.shade900,
                Colors.white,
              ]),
        ));
  }
}

class HomeHeadingWithBtn extends StatelessWidget {
  final String? headtext;
  final String btntext;
  final dynamic btnfun;
  const HomeHeadingWithBtn(
      {super.key, required this.headtext, this.btntext = "Show more", this.btnfun});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
        padding: const EdgeInsets.only(left: 10),
        decoration: gradientLeftBorder(), //             <--- BoxDecoration here
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(headtext ?? "",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.yellow,
              ),
              onPressed: btnfun,
              child: Text(btntext),
            ),
          ],
        ));
  }
}
