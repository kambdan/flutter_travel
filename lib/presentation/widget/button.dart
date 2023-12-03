import 'package:flutter/material.dart';

class CustomToggleButtons extends StatefulWidget {
  @override
  _CustomToggleButtonsState createState() => _CustomToggleButtonsState();
}

class _CustomToggleButtonsState extends State<CustomToggleButtons> {
  int _selectedIndex = 0; // El índice del botón seleccionado

  @override
  Widget build(BuildContext context) {
    List<String> labels = [
      'Más visitados',
      'Cercanos',
      'Lejanos'
    ]; // Etiquetas de los botones
    List<Widget> buttons = List.generate(labels.length, (index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor:
                _selectedIndex == index ? Colors.black : Colors.grey[300],
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          ),
          onPressed: () {
            setState(() {
              _selectedIndex = index; // Cambia el índice seleccionado
            });
          },
          child: Text(
            labels[index],
            style: TextStyle(
              color: _selectedIndex == index ? Colors.white : Colors.black,
              fontSize: 14,
            ),
          ),
        ),
      );
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buttons,
    );
  }
}
