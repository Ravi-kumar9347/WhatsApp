import 'package:flutter/material.dart';
import 'package:whats_app/pages/design_System.dart';
import 'package:whats_app/pages/home.dart';
import 'package:whats_app/pages/statusfloatingbutton1.dart';
import 'package:whats_app/pages/statusfloatingbutton2.dart';

class STATUS extends StatelessWidget {
  const STATUS({
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
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 6.0,
                        ),
                        child: Icon(
                          Icons.person,
                          size: 48.0,
                          color: tab_Col_sel,
                        ),
                      ),
                      radius: 23.0,
                      backgroundColor: tab_Col_Unsel,
                    ),
                    Positioned(
                      top: 23.0,
                      left: 23.0,
                      child: CircleAvatar(
                        radius: 12.0,
                        backgroundColor: tab_Col_sel,
                      ),
                    ),
                    Positioned(
                      top: 25.0,
                      left: 25.0,
                      child: CircleAvatar(
                        radius: 10.0,
                        backgroundColor: app_Bar,
                      ),
                    ),
                    Positioned(
                      top: 25.0,
                      left: 25.0,
                      child: Icon(
                        Icons.add,
                        size: 20.0,
                        color: tab_Col_sel,
                      ),
                    ),
                  ],
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'My status',
                    style: TextStyle(fontSize: 15.0),
                  )
                ],
              ),
              subtitle: Text(
                'Tap to add status update',
                style: TextStyle(
                    color: tab_Col_Unsel,
                    fontStyle: FontStyle.italic,
                    fontSize: 12.0),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 60.0,
            width: 40.0,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Statusfloatingbutton1();
                }));
              },
              backgroundColor: tab_Col_Unsel,
              child: Icon(
                Icons.edit,
                color: Color(0xFF303030),
                size: 25.0,
              ),
            ),
          ),
          Container(
              height: 50.0,
              width: 50.0,
              child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Statusfloatingbutton2();
                    }));
                  },
                  backgroundColor: app_Bar,
                  child: Icon(Icons.photo_camera_outlined)))
        ],
      ),
    );
  }
}
