import 'package:flutter/material.dart';
import 'package:flutter_demo/demos/game/main_game_page.dart';
import 'package:flutter_demo/demos/shoe_shop/shoes_store_page.dart';

class GotoappPage extends StatelessWidget {
  const GotoappPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShoesStorePage()),
              );
            },
            child: Text('Go to Shoe Store'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainGamePage()),
              );
            },
            child: Text('Go to Game'),
          ),
        ],
      ),
    );
  }
}
