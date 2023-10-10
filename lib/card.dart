import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final url;
  final title;
  MyCard({required this.url, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(url),
          ),
          Text(title),
        ],
      ),
    );
  }
}
