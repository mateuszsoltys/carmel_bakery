import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffDA9166),
        body: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Image(
                image: AssetImage(
                  'assets/images/carmellogo.png',
                ),
                height: 176,
                width: 193,
              ),
            ],
          ),
        ));
  }
}
