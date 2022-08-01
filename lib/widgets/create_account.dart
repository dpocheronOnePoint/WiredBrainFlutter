import 'package:flutter/material.dart';

import '../const.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Don\'t have an account?",
          style: TextStyle(color: Colors.grey.shade600),
        ),
        const Text(
          " Register",
          style: TextStyle(
            color: darkBrown,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
