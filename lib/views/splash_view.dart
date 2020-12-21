import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 240, 20, 0),
              child: Container(
                width: 60,
                child: Image(image: AssetImage('./assets/one.png'),),
              ),
              ),)
          ],
        ),
        
      ),     
    );
  }
}
