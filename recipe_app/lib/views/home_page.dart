import 'package:flutter/material.dart';
import 'package:recipe_app/data/data.dart';
import 'package:recipe_app/views/recipe_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[900],
        leading: const IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: null,
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu_rounded),
            SizedBox(
              width: 10,
            ),
            Text('Food recipe'),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Details(
                          recipes[index].title,
                          recipes[index].ingredients,
                          recipes[index].steps,
                          recipes[index].imageRoute,
                          recipes[index].duration)));
            },
            child: Card(
              elevation: 4.0,
              margin: const EdgeInsets.all(10),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      recipes[index].imageRoute,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 250,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 15,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.black54,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            recipes[index].title,
                            style: const TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 5, // Espacio entre el texto y el Row
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Agrega aquí los elementos que desees en el Row
                              const Icon(
                                Icons.alarm_sharp,
                                color: Colors.white,
                              ),
                              Text(
                                ' ${recipes[index].duration} min ',
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              const Icon(
                                Icons.shopping_bag_rounded,
                                color: Colors.white,
                              ),
                              Text(
                                recipes[index].level,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              const Icon(
                                Icons.attach_money,
                                color: Colors.white,
                              ),
                              Text(
                                recipes[index].cost,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
