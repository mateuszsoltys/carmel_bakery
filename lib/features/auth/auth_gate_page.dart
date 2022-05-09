import 'package:carmel_bakery/features/home/page/home_page.dart';
import 'package:carmel_bakery/features/profile/page/profile_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      // If the user is already signed-in, use it as initial data
      initialData: FirebaseAuth.instance.currentUser,
      builder: (context, snapshot) {
        // User is not signed in
        if (!snapshot.hasData) {
          return SignInScreen(
            headerBuilder: (context, constraints, _) {
              return const Image(
                image: AssetImage(
                  'assets/images/carmellogo.png',
                ),
                height: 176,
                width: 193,
              );
            },
            providerConfigs: [
              EmailProviderConfiguration(),
              GoogleProviderConfiguration(
                  clientId:
                      '374235261611-he2815vqd40bt9eouupflre00j9iu322.apps.googleusercontent.com')
            ],
          );
        }

        // Render your application if authenticated
        return HomePage();
      },
    );
  }
}
