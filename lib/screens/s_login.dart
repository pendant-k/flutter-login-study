import 'package:flutter/material.dart';
import 'package:login_example/widgets/login_textfield_widget.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // states
  // login information
  // id, pw
  var userId = '';
  var password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text(
          'Dice App',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/animations/cat.json',
              width: 300,
              height: 300,
            ),
            SizedBox(
              height: 50,
            ),
            LoginTextFieldWidget(
              hintText: '아이디를 입력해주세요',
              labelText: 'ID',
              onChanged: (value) {
                setState(() {
                  userId = value;
                });
              },
            ),
            SizedBox(
              height: 16,
            ),
            LoginTextFieldWidget(
              hintText: '패스워드를 입력해주세요',
              labelText: 'PW',
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return Container();
                  //     },
                  //   ),
                  // );
                },
                child: Text(
                  '로그인',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
