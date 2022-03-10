import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  final emailController = TextEditingController();
  final passwordConntroller = TextEditingController();

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
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 47, right: 47),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      filled: true,
                      labelText: 'E-mail',
                      labelStyle: TextStyle(
                        color: Color(0xffffffff),
                      ),
                      fillColor: Color(0xff9E5511)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 29, left: 47, right: 47),
                child: TextField(
                  controller: passwordConntroller,
                  decoration: const InputDecoration(
                      labelText: 'Hasło',
                      labelStyle: TextStyle(
                        color: Color(0xffffffff),
                      ),
                      filled: true,
                      fillColor: Color(0xff9E5511)),
                ),
              ),
              const SizedBox(
                height: 59,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xffA90000)),
                        onPressed: () {},
                        child: const Text('WCHODZĘ DO PYSZNOŚCI')),
                  )),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Nie mam jeszcze konta...',
                    style: TextStyle(color: Color(0xffD2BABA)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('rejestruję się!'),
                    style:
                        TextButton.styleFrom(primary: const Color(0xff686CC7)),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
