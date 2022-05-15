import 'package:flutter/material.dart';
import 'package:mockup_app/src/exercicios/gerador_de_cpf/src/model/cpf_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String cpf = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121517),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    cpf = Cpf.geraCpf();
                  });
                },
                child: const Text('Gerar CPF'),
              ),
            ),
            Column(
              children: [
                Text(
                  cpf,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
