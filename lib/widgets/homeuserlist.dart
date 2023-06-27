import 'package:flutter/material.dart';

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
              Expanded(
                  child: ListTile(
                leading: Icon(Icons.verified_user),
                title: Text("Alina Rs.1000"),
                subtitle: Text("5 sec ago"),
                titleTextStyle: TextStyle(fontSize: 13),
                subtitleTextStyle: TextStyle(fontSize: 13),
              )),
              Expanded(
                  child: ListTile(
                leading: Icon(Icons.verified_user),
                title: Text("Misha Rs.2000"),
                subtitle: Text("15 sec ago"),
                titleTextStyle: TextStyle(fontSize: 13),
                subtitleTextStyle: TextStyle(fontSize: 13),
              )),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: ListTile(
                leading: Icon(Icons.verified_user),
                title: Text("Alina Rs.1000"),
                subtitle: Text("5 sec ago"),
                titleTextStyle: TextStyle(fontSize: 13),
                subtitleTextStyle: TextStyle(fontSize: 13),
              )),
              Expanded(
                  child: ListTile(
                leading: Icon(Icons.verified_user),
                title: Text("Misha Rs.2000"),
                subtitle: Text("15 sec ago"),
                titleTextStyle: TextStyle(fontSize: 13),
                subtitleTextStyle: TextStyle(fontSize: 13),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
