import 'package:flutter/material.dart';
import 'package:matager/modules/OnBoarding/OnBoarding.dart';

class SplachScreen extends StatefulWidget {
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OnBoarding()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.cover,
            height: 50,
            width: MediaQuery.of(context).size.width / 2,
          ),
        ),
      ),
    );
  }
}
