import 'package:flutter/material.dart';
import 'package:flutter_travel/presentation/widget/card.dart';

import '../../domain/destination.dart';
import '../widget/barra_busqueda.dart';
import '../widget/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          headDetails(),
          const BarraBusqueda(),
          details(),
          CustomToggleButtons(),
          Expanded(child: cardDestination())
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }

  ListView cardDestination() {
    final List<Destination> destinations = [
      Destination(
        imagePath: 'assets/images/galapgos.webp',
        placeName: 'Islas Encatadas, Ecuador',
        location: 'Galápagos',
        rating: '4.8',
      ),
      Destination(
        imagePath: 'assets/images/chimborazo.png',
        placeName: 'Chimborazo, Ecuador',
        location: 'Riobamba',
        rating: '5',
      ),
      Destination(
        imagePath: 'assets/images/oriente.jpeg',
        placeName: 'Oriente, Ecuador',
        location: 'Puyo',
        rating: '5',
      ),
      Destination(
        imagePath: 'assets/images/cajas.webp',
        placeName: 'Cajas, Ecuador',
        location: 'Cuenca',
        rating: '5',
      ),
      // Añade más destinos aquí...
    ];
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        Destination destination = destinations[index];
        return Container(
            padding: EdgeInsets.only(left: 20),
            width: 300,
            height: 350,
            child: DestinationCard(
              title: destination.placeName,
              lugar: destination.location,
              imagePath: destination.imagePath,
              rating: destination.rating,
            ));
      },
    );
  }

  Padding details() {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 20, top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Lugares populares',
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          Text(
            'Ver todo',
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.normal,
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Padding headDetails() {
    return Padding(
      padding:
          const EdgeInsets.only(top: 70.0, left: 20, right: 30, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(children: [
            Text(
              'Hola, JC Coder',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
            Text(
              'Explora el mundo',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Inter'),
            )
          ]),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                    image: AssetImage('assets/images/foto.png'),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
