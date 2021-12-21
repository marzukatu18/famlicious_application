import 'dart:html';

import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Image.asset(
            'assets/download.jpg',
            height: 40,
            width: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(label: Text('Email'))),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(label: Text('Password')),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'login',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Theme.of(context).buttonTheme.colorScheme!.primary),
            ),
            style: TextButton.styleFrom(
                backgroundColor:
                    Theme.of(context).buttonTheme.colorScheme!.background),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Create Password',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          )
        ],
      )),
    );
  }
}
