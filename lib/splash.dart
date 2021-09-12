import 'package:flutter/material.dart';

import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyApp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 200,
                  width: 200,
                  child: Image(
                    image: AssetImage('images/splashLogo.png'),
                  )),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'hazard',
                  style: TextStyle(
                    //color: Colors.black,
                    color: Color(0xFF0D1D24),
                    fontSize: 30,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Safety',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
