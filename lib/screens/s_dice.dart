import 'dart:async';
import 'dart:math';

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
  final random = Random();
  var currentDice = 1;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await Future.delayed(Duration(milliseconds: 500), () {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Welcome'),
              content: Text('Hello ${widget.id}'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice by ${widget.id}'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/images/dice${currentDice}.png',
                width: 300,
                height: 300,
              ),
              SizedBox(
                height: 20,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentDice = random.nextInt(5) + 1;
                  });
                },
                icon: Icon(
                  Icons.refresh_rounded,
                  size: 60,
                ),
              )
            ],
          )),
    );
  }
}
