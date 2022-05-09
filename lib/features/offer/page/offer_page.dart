import 'package:flutter/material.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            Image(image: AssetImage('assets/images/carmellogo.png')),
            Text('Offer Page')
          ],
        ),
      ),
    );
  }
}
