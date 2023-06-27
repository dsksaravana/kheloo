import 'package:flutter/material.dart';

class HomeLanguageStrip extends StatelessWidget {
  const HomeLanguageStrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 15.0),
      padding: const EdgeInsets.all(15.0),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://kheloo.com/images/langstrip.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('English'),
          Text('हिन्दी'),
          Text('తెలుగు'),
          Text('ಕನ್ನಡ'),
          Text('मराठी'),
        ],
      ),
    );
  }
}
