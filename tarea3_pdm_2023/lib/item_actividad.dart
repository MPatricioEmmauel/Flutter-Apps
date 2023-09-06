import 'package:flutter/material.dart';

class ItemActividad extends StatelessWidget {
  ItemActividad({super.key});

  @override
  Widget build(BuildContext context) {
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
                  image: AssetImage('assets/BList_bch3.jpg')),
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
