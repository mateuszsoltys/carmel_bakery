import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      providerConfigs: [
        EmailProviderConfiguration(),
        GoogleProviderConfiguration(
            clientId:
                '374235261611-he2815vqd40bt9eouupflre00j9iu322.apps.googleusercontent.com')
      ],
    );
  }
}
