// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ufuel/pages/otp_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Image.asset('lib/images/ufuel.png'),
          //We’ll keep you moving
          Text(
            'We’ll keep you moving',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 24),
          //We give you the time to do the things that matter
          Text('We give you the time to do the things that matter'),
          SizedBox(height: 50),

          //Get Started
          Padding(
            padding: const EdgeInsets.all(25),
            child: GestureDetector(
              onTap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: ((context) {
                return OtpPage();
              }))),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(17)),
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
