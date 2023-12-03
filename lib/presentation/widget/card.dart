import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  const DestinationCard({
    Key? key,
    required this.title,
    required this.lugar,
    required this.imagePath,
    required this.rating,
  }) : super(key: key);
  final String title;
  final String lugar;
  final String imagePath;
  final String rating;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip
          .antiAlias, // Esto asegura que cualquier contenido sea recortado al tamaño del card
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(20.0), // Esquinas redondeadas del card
      ),
      child: Container(
        width: 300, // Ancho del card
        height: 350, // Alto del card
        child: Stack(
          children: <Widget>[
            Ink.image(
              image: AssetImage(imagePath), // Reemplaza con tu imagen
              fit: BoxFit.cover, // Cubre todo el espacio del card
              child: InkWell(
                onTap: () {}, // Puedes poner una acción al presionar el card
              ),
            ),
            Positioned(
              top: 16, // Posición desde arriba
              right: 16, // Posición desde la derecha
              child: Icon(Icons.favorite_border,
                  color: Colors.white), // Icono de favorito
            ),
            Positioned(
              bottom: 40, // Posición desde abajo
              left: 16, // Posición desde la izquierda
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0.0, 1.0),
                      blurRadius: 6.0,
                      color: Color.fromARGB(150, 0, 0, 0),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: Row(
                children: <Widget>[
                  Icon(Icons.location_on,
                      size: 16, color: Colors.white), // Icono de ubicación
                  Text(
                    lugar,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Container(width: 4), // Espacio entre texto e icono
                  Icon(Icons.star,
                      size: 16, color: Colors.white), // Icono de estrella
                  Text(
                    rating,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
