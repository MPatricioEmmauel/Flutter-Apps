import 'package:flutter/material.dart';
import 'package:info_lugar/info_lugar.dart';
import 'package:info_lugar/item_actividad.dart';

class CardItem {
  final String imagePath;
  final String place;
  final String day;

  const CardItem({
    required this.imagePath,
    required this.place,
    required this.day,
  });
}

class HomePage extends StatelessWidget {
  final ItemActividad itemA = new ItemActividad();

  HomePage({
    Key? key,
  }) : super(key: key);

  List<CardItem> items = [
    CardItem(
        imagePath: 'assets/BList_bch1.jpg',
        place: "Banana Beach",
        day: "Day 1"),
    CardItem(
        imagePath: 'assets/BList_bch2.jpg',
        place: "Phuket Beach",
        day: "Day 2"),
    CardItem(
        imagePath: 'assets/BList_bch3.jpg',
        place: "Railay Beach",
        day: "Day 3"),
    CardItem(
        imagePath: 'assets/BList_bch4.jpg',
        place: "Ko Samui Beach",
        day: "Day 4"),
    CardItem(
        imagePath: 'assets/BList_bch5.jpg',
        place: "Ko Phi Phi Beach",
        day: "Day 5"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(),
        foregroundColor: Colors.white,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 225,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/appBar_img.jpg'),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
              Positioned(
                top: 64,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    InfoLugar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Details"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.grey[200],
                          ),
                        ),
                        Text("Walkthrough Flight Detail"),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            final cardItem = items[index];
                            return itemA.buildCard(item: cardItem);
                          }),
                    ),
                    Center(
                      child: MaterialButton(
                        onPressed: () {
                          final snackBar = SnackBar(
                            content: Center(
                              child: Text("Reservación en progreso..."),
                            ),
                            backgroundColor: Colors.blueGrey,
                            elevation: 10,
                            behavior: SnackBarBehavior.floating,
                            margin: EdgeInsets.all(5),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Text("Start booking"),
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        elevation: 10,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(20),
                        minWidth: 350,
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
