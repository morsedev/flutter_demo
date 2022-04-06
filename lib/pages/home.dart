import 'package:flutter/material.dart';
import 'package:flutter_demo/demos/shoe_shop/shoes_store_page.dart';
import 'package:flutter_demo/pages/gotoapp.dart';
import 'package:flutter_demo/pages/performance.dart';
import 'package:flutter_demo/widgets/topbar.dart';
import '/pages/simple.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  Widget getView(int index) {
    switch (index) {
      case 0:
        return const SimplePage();
      case 1:
        return const GotoappPage();
      case 2:
        return const PerformancePage();
      default:
        return const SimplePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Topbar(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          currentIndex: _selectedIndex,
          // backgroundColor: Colors.black54,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Simple layout',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.widgets),
              label: 'Widget App',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Performance',
            ),
          ],
        ),
        body: getView(_selectedIndex));
  }
}
