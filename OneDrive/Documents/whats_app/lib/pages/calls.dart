import 'package:flutter/material.dart';
import 'package:whats_app/pages/design_System.dart';
import 'package:whats_app/pages/home.dart';
import 'package:whats_app/pages/chatFloatingButton.dart';

class CALLS extends StatelessWidget {
  const CALLS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          search
              ? Container(
                  margin: EdgeInsets.only(left: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.arrow_back),
                      hintText: "Search...",
                    ),
                  ),
                )
              : Container(),
          Container(
            padding: EdgeInsets.only(
              top: 8.0,
            ),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 10.0),
              leading: Container(
                width: 50.0,
                height: 50.0,
                child: Stack(
                  children: [
                    CircleAvatar(
                      child: Transform.rotate(
                        angle: 135 * 3.14 / 180,
                        child: Icon(Icons.link),
                      ),
                      radius: 23.0,
                      backgroundColor: app_Bar,
                    ),
                  ],
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Create call link',
                    style: TextStyle(fontSize: 15.0),
                  )
                ],
              ),
              subtitle: Text(
                'Share a link for your WhatsApp call',
                style: TextStyle(
                    color: tab_Col_Unsel,
                    fontStyle: FontStyle.italic,
                    fontSize: 12.0),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
          height: 50.0,
          width: 50.0,
          child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Chatfloatingbutton();
                }));
              },
              backgroundColor: app_Bar,
              child: Icon(Icons.add_call))),
    );
  }
}
