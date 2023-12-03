import 'package:flutter/material.dart';

class BarraBusqueda extends StatelessWidget {
  const BarraBusqueda({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 354,
      padding: const EdgeInsets.symmetric(
          horizontal: 10), // Agrega padding si es necesario
      decoration: BoxDecoration(
        color: Colors.white, // Color de fondo del contenedor
        borderRadius: BorderRadius.circular(30), // Bordes redondeados
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3), // Cambia la posición de la sombra
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Buscar Lugares', // Texto de sugerencia
          prefixIcon: Icon(Icons.search), // Icono de lupa
          suffixIcon: IconButton(
            icon: Icon(Icons.clear), // Icono para borrar texto
            onPressed: () {
              // Acción al presionar el icono de borrar
            },
          ),
          border: InputBorder.none, // Quita el borde del TextField
          contentPadding: EdgeInsets.symmetric(
              vertical: 15), // Padding interno del TextField
        ),
      ),
    );
  }
}
