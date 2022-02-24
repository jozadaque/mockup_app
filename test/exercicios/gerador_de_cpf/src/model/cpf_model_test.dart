import 'package:flutter_test/flutter_test.dart';
import 'package:mockup_app/exercicios/gerador_de_cpf/src/model/cpf_model.dart';

void main() {
  testWidgets('cpf model ...', (tester) async {
    print('CPF é ${Cpf.validaCpf('820.997.312-68')}');
  });
}
