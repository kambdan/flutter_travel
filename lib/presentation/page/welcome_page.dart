import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_travel/presentation/page/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      });
    });
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(2, 112, 175, 1),
              Color.fromRGBO(1, 24, 72, 1)
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Viaje',
                    style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 32,
                        color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  SvgPicture.asset('assets/icons/globe.svg'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 252,
              child: Text(
                'Encuentra el destino de tus sueños con nosotros',
                style: TextStyle(
                    fontFamily: 'Roboto', fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
