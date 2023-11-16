import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({
    super.key,
    required this.id,
  });
  final String id;

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> with AfterLayoutMixin<DiceScreen> {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await Future.delayed(Duration(milliseconds: 500), () {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Welcome'),
              content: Text('Welcome ${widget.id}'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('OK'))
              ],
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
