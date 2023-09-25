import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String title;
  final String ingredients;
  final String steps;
  final String imgUrl;
  final int duration;

  const Details(
      this.title, this.ingredients, this.steps, this.imgUrl, this.duration,
      {super.key});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isFavorite = false;

  void setFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });

    final snackBar = SnackBar(
      content: Center(
        child: Text(
          isFavorite
              ? '¡Meal added to favorites!'
              : 'Meal no longer in favorites :(',
          style: const TextStyle(
              color: Colors.black87, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, isSrollable) {
            return <Widget>[
              SliverAppBar(
                centerTitle: true,
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                backgroundColor: Colors.brown[900],
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(widget.title),
                ),
                actions: <Widget>[
                  IconButton(
                      onPressed: setFavorite,
                      icon: Icon(
                        isFavorite
                            ? Icons.star_rounded
                            : Icons.star_border_rounded,
                        color: Colors.white,
                      ))
                ],
              )
            ];
          },
          body: Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.brown[900],
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(widget.imgUrl),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Ingredients",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.orange.shade300,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.ingredients,
                        style: const TextStyle(color: Colors.white54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Steps",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.orange.shade300,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        '''${widget.steps}''',
                        style: const TextStyle(color: Colors.white54),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
