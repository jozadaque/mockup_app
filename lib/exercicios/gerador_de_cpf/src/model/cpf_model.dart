import 'dart:math';

class Cpf {
  final String value = '';

  const Cpf({
    required String value,
  });

  static String geraCpf() {
    String cpf =
        Random().nextInt(9999).toString() + Random().nextInt(99999).toString();
    if (cpf.length < 9) {
      cpf = '${'0' * (9 - cpf.length)}$cpf';
    }
    cpf = '$cpf${_getDigitoCpf(cpf, 9)}';
    cpf = '$cpf${_getDigitoCpf(cpf, 10)}';

    return _formataCpf(cpf);
  }

  static _getDigitoCpf(String value, int end) {
    var cpf = value.split('').sublist(0, end);
    var somaDigito = 0;
    for (int i = 0; i < cpf.length; i++) {
      somaDigito += int.parse(cpf[i]) * ((cpf.length + 1) - i);
    }
    var modulo = somaDigito % 11;

    if (modulo < 2) {
      return 0;
    } else {
      return 11 - modulo;
    }
  }

  static _formataCpf(String value) {
    var cpf = value.split('');
    cpf.insert(3, '.');
    cpf.insert(7, '.');
    cpf.insert(11, '-');
    String cpfFormat = '';

    for (var element in cpf) {
      cpfFormat = cpfFormat + element;
    }
    return cpfFormat;
  }

  static validaCpf(String value) {
    String cpf = _limpaCpf(value);

    for (int i = 0; i < cpf.length; i++) {
      if (cpf.contains(i.toString() * 11)) return false;
    }

    var digito1 = _getDigitoCpf(cpf, 9);
    var digito2 = _getDigitoCpf('$cpf$digito1', 10);

    return cpf.endsWith('$digito1$digito2');
  }

  static String _limpaCpf(String value) {
    var list = value.split('');
    list.removeWhere(
        (element) => element.contains('.') || element.contains('-'));
    var cpf = '';
    for (var element in list) {
      cpf = cpf + element;
    }
    return cpf;
  }
}
