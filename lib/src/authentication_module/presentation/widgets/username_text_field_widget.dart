import 'package:flutter/material.dart';

class UsernameTextField extends StatelessWidget {
  final Function(String)? onChanged;

  const UsernameTextField({Key? key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: const InputDecoration(
        labelText: 'Username',
      ),
    );
  }
}
