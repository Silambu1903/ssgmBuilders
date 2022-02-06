import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'dart:math' as math;

import 'bannerScreen.dart';

class DashboardScreen extends StatefulWidget {
  static String id = '/HomeScreen';

  DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  static const maxCount = 100;
  final scrollDirection = Axis.vertical;
  late AutoScrollController controller;
  late List<List<int>> randomList;

  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: scrollDirection);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        scrollDirection: scrollDirection,
        controller: controller,
        children: [
          wrapScrollTag(index: 0, child: BannerScreen(),),
        ],
      ),
    ));
  }

  int counter = -1;

  Future _nextCounter() {
    setState(() => counter = (counter + 1) % maxCount);
    return _scrollToCounter();
  }

  Future _scrollToCounter() async {
    await controller
        .scrollToIndex(counter, preferPosition: AutoScrollPosition.begin);
    controller.highlight(counter);
  }


  Widget wrapScrollTag({required int index, required Widget child}) =>
      AutoScrollTag(
        key: ValueKey(index),
        controller: controller,
        index: index,
        child: child,
        highlightColor: Colors.black.withOpacity(0.1),
      );

}

