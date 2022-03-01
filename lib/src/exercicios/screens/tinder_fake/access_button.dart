import 'package:flutter/material.dart';

import 'components/button.dart';

class AccessButton extends StatelessWidget {
  const AccessButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ButtonComponent(
          label: 'sign in with apple',
          urlImage: 'assets/images/apple.png',
        ),
        ButtonComponent(
          label: 'sign in with facebook',
          urlImage: 'assets/images/facebook.png',
        ),
        ButtonComponent(
          label: 'sign in with phone number',
          urlImage: 'assets/images/talk.png',
        ),
      ],
    );
  }
}
