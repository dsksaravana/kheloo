import 'package:flutter/material.dart';
import 'package:kheloo/widgets/bottomnavimenu.dart';
import 'package:kheloo/widgets/homeheadings.dart';
import 'package:kheloo/widgets/homecounter.dart';
import 'package:kheloo/widgets/homeuserlist.dart';
import 'package:kheloo/widgets/languagestrip.dart';

import '../helpers/constants.dart';
import '../widgets/bannerslider.dart';
import '../widgets/gameslist.dart';
import '../widgets/homevideo.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Image.network(appLogo, width: 70),
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.wallet_giftcard),
                  tooltip: '',
                  onPressed: () {}),
              Container(
                alignment: Alignment.center,
                width: 70,
                height: double.maxFinite,
                color: Colors.yellow,
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
            backgroundColor: appBackgroudColour),
        body: const SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BannerSlider(),
            HomeLanguageStrip(),
            HomeCounter(),
            HomeHeading(headtext: "LIVE WITHDRAWAL"),
            HomeUserList(),
            HomeVideo(),
            HomeHeading(headtext: "GAMES"),
            HomeGridView(gridlist: popularGames, headtext: "Popular Games"),
            HomeGridView(gridlist: liveGames, headtext: "Playtech Live (103)"),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: appColor,
          foregroundColor: Colors.black,
          onPressed: () {},
          mini: true,
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const BottomNavBarMenu());
  }
}
