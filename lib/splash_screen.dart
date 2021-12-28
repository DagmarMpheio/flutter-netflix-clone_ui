import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> initializeState() async {
    Future.delayed(
      const Duration(milliseconds: 2450),
      () {
        try {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const OnBoardingScreen(),
          ));
          // ignore: empty_catches
        } catch (e) {}
      },
    );
  }

  @override
  void initState() {
    super.initState();
    initializeState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/netflix-logo.gif'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
