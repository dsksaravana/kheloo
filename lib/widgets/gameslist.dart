import 'package:flutter/material.dart';

import 'homeheadings.dart';

class HomeGridView extends StatefulWidget {
  final List gridlist;
  final String headtext;
  const HomeGridView(
      {super.key, required this.gridlist, required this.headtext});

  @override
  State<HomeGridView> createState() => _HomeGridViewState();
}

class _HomeGridViewState extends State<HomeGridView> {
  bool showmore = false;

  setShowmore() {
    setState(() {
      showmore = !showmore;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      child: Column(
        children: [
          HomeHeadingWithBtn(
              headtext: widget.headtext,
              btntext: (showmore ? "Show Less" : "Show More"),
              btnfun: setShowmore),
          GridView.builder(
            padding: const EdgeInsets.only(top: 10),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemCount: showmore ? widget.gridlist.length : 4,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(widget.gridlist[index]),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                        color: const Color.fromARGB(255, 205, 157, 123),
                        width: 3.0)),
              );
            },
          ),
        ],
      ),
    );
  }
}

class HomeGridview extends StatelessWidget {
  final List gridlist;
  const HomeGridview({super.key, required this.gridlist});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemCount: gridlist.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(gridlist[index]),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                    color: const Color.fromARGB(255, 205, 157, 123),
                    width: 3.0)),
          );
        },
      ),
    );
  }
}
