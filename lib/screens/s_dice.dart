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

class _DiceScreenState extends State<DiceScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
