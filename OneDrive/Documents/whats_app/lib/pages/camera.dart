import 'package:flutter/material.dart';
import 'package:whats_app/pages/design_System.dart';
import 'package:whats_app/pages/pageContent.dart';

class CAMERA extends StatelessWidget {
  const CAMERA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: app_Bar,
        title: const Text(
          'Camera',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Pagecontent(),
    );
  }
}
