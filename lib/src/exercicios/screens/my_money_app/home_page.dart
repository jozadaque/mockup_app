import 'package:flutter/material.dart';
import 'components/text_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: SizedBox(
                  height: 180,
                  child: Image.asset(
                    'assets/images/logo_mockup1.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const TextComponent(text: 'Get your Money', fontSize: 38),
              const TextComponent(text: 'Under Control', fontSize: 38),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextComponent(
                    text: 'Manage your expenses.', color: Colors.white38),
              ),
              const TextComponent(text: 'Seamlessly.', color: Colors.white38),
              const SizedBox(height: 94),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  width: double.infinity,
                  height: 57,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blueAccent)),
                      onPressed: () {},
                      child: const TextComponent(
                          text: 'Sign Up with Email ID', fontSize: 20)),
                ),
              ),
              const SizedBox(height: 15),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  width: double.infinity,
                  height: 57,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 10),
                            width: 32,
                            height: 32,
                            child: Image.asset('assets/images/pngwing.com.png'),
                          ),
                          const TextComponent(
                            text: 'Sign Up with Google',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextComponent(
                    text: 'Already have an account?',
                    color: Colors.white70,
                    fontSize: 19,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const TextComponent(
                      text: 'Sign In',
                      decoration: TextDecoration.underline,
                      color: Colors.white70,
                      fontSize: 19,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
