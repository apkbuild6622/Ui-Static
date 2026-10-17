import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  final String  title, image, price;
  const ItemProduct({super.key, required this.title, required this.image, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 200,
        child: Column(
          children: [
            Flexible(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/$image',
                      width: double.infinity,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        title,
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        spacing: 30,
                        children: [
                          Text('Rs        $price', style: TextStyle(fontWeight: .w300),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],

        ),
      ),
    );
  }
}
