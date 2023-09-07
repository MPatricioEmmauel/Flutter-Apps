import 'package:flutter/material.dart';
import 'package:info_lugar/home_page.dart';

class ItemActividad extends StatelessWidget {
  ItemActividad(CardItem item, {super.key});

  @override
  Widget build({required CardItem item}) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imagePath)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          Text("Day 1", style: TextStyle(fontSize: 11)),
          Text("Bali mountains"),
        ],
      ),
    );
  }
}
