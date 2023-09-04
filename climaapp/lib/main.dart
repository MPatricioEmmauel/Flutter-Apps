import 'package:flutter/material.dart';

void main() => runApp(const MyApp()); //Inicializamos la app

class MyApp extends StatelessWidget {
  //Creamos la clase principal de mi app
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //Se regresamos un widget del tipo Material App
      home:
          HomePage(), //Invoca la clase "Home Page" que es nuestra pantalla principal
    );
  }
}

class HomePage extends StatelessWidget {
  //Declaramos la clase Home page
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Ponemos todo en un Scaffold para tener el AppBar disponible
      appBar: AppBar(
        title: const Text("ClimApp"), //Ponemos el titulo a nuestra app de clima
        backgroundColor: Colors.indigo, //Elegimos un color
      ),
      body: Container(
        // Dentro de nuestro Scaffold en el body ponemos un Container para manesar el contenido a nuestro gusto
        margin: const EdgeInsets.all(
            8), //Le damos margen y pading para que nos de un espacio
        padding: const EdgeInsets.all(8),
        color: const Color(
            0xffeea433), //Le ponemos el color de nuestra preferencia

        // Hasta aqui ya tenemos un cuadro naranja delimitado y nuestra appBar

        child: Column(
          //Creamos una columna para acomodar el contenido
          mainAxisSize: MainAxisSize.min, //Que tome lo minimo necesario
          crossAxisAlignment:
              CrossAxisAlignment.start, //Acomodemos los objetos al inicio
          children: [
            Text(
              //Un texto con Estilo personalizado
              "San Francisco",
              style: TextStyle(
                fontSize: 32,
                color: Colors.grey[100],
              ),
            ),
            Text(
              //Otro texto con Estilo personalizado
              "Nublado",
              style: TextStyle(
                color: Colors.grey[200],
              ),
            ),
            Row(
              //Un row para continuar con el acomodo
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround, //Toma el espacio disponible
              children: [
                const Icon(
                  //Le anadimos un icono personalizado
                  Icons.wb_cloudy,
                  color: Color(0xffa4e6e2),
                  size: 64,
                ),
                Text(
                  //Un texto con estilo
                  "19 C",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w200,
                    color: Colors.grey[200],
                  ),
                ),
              ],
            ),
            Align(
              //Alineamos el boton
              alignment: Alignment.center, //Alineado de manera centrada
              child: MaterialButton(
                //Declaramos el boton
                color: Colors.yellow, //Le ponemos color
                child:
                    const Text("Actualizar datos"), //Le ponemos dentro un texto
                onPressed: () {
                  //Creamos una funcioon para cuando lo presionas
                  ScaffoldMessenger.of(
                      context) //Creamos un ScaffoldMessenger para traer snack bar
                    ..hideCurrentSnackBar() //Limpia SnackBars que esten en pantalla
                    ..showSnackBar(
                      //Muestra SnackBar
                      const SnackBar(
                        //Que muestra la SnackBar? Pues ->
                        content: Text(
                            "Actualizando datos del clima..."), //Muestra un texto el snack bar
                      ),
                    );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
