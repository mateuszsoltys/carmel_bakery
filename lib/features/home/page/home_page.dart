import 'package:carmel_bakery/features/offer/page/offer_page.dart';
import 'package:carmel_bakery/features/profile/page/profile_page.dart';
import 'package:carmel_bakery/features/qr_code/page/qr_code_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentIndex = 1;
    final screens = [
      QrCodePage(),
      OfferPage(),
      ProfilePage(),
    ];
    return Scaffold(
      backgroundColor: const Color(0xffDA9166),
      body: screens[currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          index: currentIndex,
          height: 60,
          backgroundColor: Colors.transparent,
          color: Colors.pink[900]!,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
          items: const <Widget>[
            Icon(Icons.qr_code, size: 30),
            Icon(Icons.view_list, size: 30),
            Icon(Icons.person_outline_sharp, size: 30),
          ],
        ),
      ),
    );
  }
}
