import 'package:flutter/cupertino.dart';

class SliderPage extends StatelessWidget {

  final String image;
  SliderPage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(image)
        ],
      ),
    );
  }
}
