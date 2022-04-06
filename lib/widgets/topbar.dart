import 'package:flutter/material.dart';

class Topbar extends StatelessWidget implements PreferredSizeWidget {
  const Topbar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        centerTitle: false,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.image,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'MyAwesomeUsername',
                      style: TextStyle(fontStyle: FontStyle.normal),
                    ),
                    Text(
                      'Subtitle',
                      style: TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 15,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications, size: 15),
                  ),
                ),
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            )
          ],
        ),
        backgroundColor: Theme.of(context).canvasColor);
  }
}
