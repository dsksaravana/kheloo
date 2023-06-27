import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class HomeUserList extends StatelessWidget {
  const HomeUserList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image:
              NetworkImage("https://kheloo.com/images/Withdrawl-Board_9.png"),
          fit: BoxFit.contain,
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              GridUser(userName: "Misha Rs.550", time: "15 sec ago"),
              GridUser(userName: "Alina Rs.1000", time: "5 sec ago"),
            ],
          ),
          Row(
            children: [
              GridUser(userName: "Misha Rs.200", time: "15 sec ago"),
              GridUser(userName: "Alina Rs.1000", time: "5 sec ago"),
            ],
          ),
        ],
      ),
    );
  }
}

class GridUser extends StatelessWidget {
  final String userName;
  final String time;
  const GridUser({super.key, required this.userName, required this.time});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListTile(
      leading: Container(
        padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              shape: BoxShape.circle, border: Border.all(color: appColor,width: 3)),
          child: const Icon(Icons.person)),
      title: Text(userName),
      subtitle: Text(time),
      titleTextStyle: const TextStyle(fontSize: 13),
      subtitleTextStyle: const TextStyle(fontSize: 13),
    ));
  }
}
