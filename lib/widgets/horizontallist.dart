import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/detail.dart';
import 'package:transparent_image/transparent_image.dart';

class HorizontalList extends StatelessWidget {
  HorizontalList({
    Key? key,
    required this.title,
    required this.contentList,
    this.height = 150,
    this.width = 300,
  }) : super(key: key);

  final String title;
  final List contentList;
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 10, top: 20),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        SizedBox(
          height: height,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: contentList.length,
            itemBuilder: (context, int count) {
              // final Entry current = contentList[count];
              return GestureDetector(
                onTap: () async {
                  // await showDialog(
                  //     context: context,
                  //     builder: (context) => DetailsScreen(entry: current));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailPage()));
                },
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  // height: 100,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  width: width,
                  child: FadeInImage.memoryNetwork(
                    fit: BoxFit.cover,
                    placeholder: kTransparentImage,
                    image: 'https://picsum.photos/250?image=' +
                        contentList[count].toString(),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
