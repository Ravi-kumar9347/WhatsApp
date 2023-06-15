import 'package:flutter/material.dart';

class Pagecontent extends StatelessWidget {
  const Pagecontent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "As this is an UI replica , these pages",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            Text(
              "are just created for illustration of",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            Text(
              " App-Flow ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
