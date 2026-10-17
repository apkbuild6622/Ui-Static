import 'package:flutter/material.dart';

class ItemBanner extends StatelessWidget {
  final String image;
  const ItemBanner({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/banner.jpg"),
        ),
      ),
    );

  }
}
