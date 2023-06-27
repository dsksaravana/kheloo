import 'dart:async';

import 'package:flutter/material.dart';

class HomeCounter extends StatefulWidget {
  const HomeCounter({super.key});

  @override
  State<HomeCounter> createState() => _HomeCounterState();
}

class _HomeCounterState extends State<HomeCounter> {
  int _counter = 7594001;
  List _counterString = [];
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
        const Duration(milliseconds: 1000),
        (timer) => setState(() {
              _counter++;
              _counterString = _counter.toString().split("");
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://kheloo.com/images/jackpot.png"),
            fit: BoxFit.contain,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 58, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _counterString.map((word) {
              return Text(word.toString(), style: _counterStyle());
            }).toList(),
          ),
        ));
  }

  _counterStyle() {
    return const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
