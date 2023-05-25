import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  final Function(String)? onChanged;

  const PasswordTextField({Key? key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Password',
      ),
    );
  }
}
