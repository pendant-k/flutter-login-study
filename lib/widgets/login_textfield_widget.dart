import 'package:flutter/material.dart';

class LoginTextFieldWidget extends StatelessWidget {
  const LoginTextFieldWidget({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.onChanged,
  });
  final String hintText;
  final String labelText;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          label: Text(labelText),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Row(
        children: [ElevatedButton(onPressed: () {}, child: Text(''))],
      ),
    );
  }
}
