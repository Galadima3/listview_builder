import 'package:flutter/material.dart';
import 'package:listview_builder/circle.dart';
import 'package:listview_builder/square.dart';

class HomePage extends StatelessWidget {
  final List _post = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
  ];
  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
    'story 6',
  ];
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //stories
        Container(
          alignment: Alignment.center,
          height: 150 ,
          child: ListView.builder(
            itemCount: _stories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return MyCircle(child: _stories[index],);
            }),
          ),
        ),
        //posts
        Expanded(
          
          child: ListView.builder(
            itemCount: _post.length,
            itemBuilder: ((context, index) {
              return MySquare(
                child: _post[index],
              );
            }),
          ),
        ),
      ],
    ));
  }
}
