import 'package:flutter/material.dart';
import 'package:whats_app/pages/design_System.dart';
import 'package:whats_app/pages/pageContent.dart';

class NEWGROUP extends StatelessWidget {
  const NEWGROUP({super.key});

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
                  'New group',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                const Text(
                  'Add participants',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
              color: light_Icon,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Pagecontent(),
    );
  }
}
