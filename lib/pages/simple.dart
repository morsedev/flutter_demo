import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/horizontallist.dart';

class SimplePage extends StatefulWidget {
  const SimplePage({Key? key}) : super(key: key);

  @override
  State<SimplePage> createState() => _SimplePageState();
}

class _SimplePageState extends State<SimplePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: [
          HorizontalList(
            height: 150,
            width: 100,
            title: 'Some content',
            contentList: List<int>.generate(15, (i) => Random().nextInt(100)),
          ),
          HorizontalList(
            height: 150,
            width: 200,
            title: 'Other content',
            contentList: List<int>.generate(10, (i) => Random().nextInt(100)),
          ),
          HorizontalList(
            height: 200,
            width: 200,
            title: 'Some other content',
            contentList: List<int>.generate(15, (i) => Random().nextInt(100)),
          ),
        ],
      ),
    );
  }
}
