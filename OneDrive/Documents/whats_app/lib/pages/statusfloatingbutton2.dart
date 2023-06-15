import 'package:flutter/material.dart';
import 'package:whats_app/pages/design_System.dart';
import 'package:whats_app/pages/pageContent.dart';

class Statusfloatingbutton2 extends StatelessWidget {
  const Statusfloatingbutton2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: app_Bar,
        title: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Camera',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
      body: Pagecontent(),
    );
  }
}
