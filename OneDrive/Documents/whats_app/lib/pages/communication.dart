import 'package:flutter/material.dart';
import 'package:whats_app/pages/design_System.dart';
import 'package:whats_app/pages/newCommunity.dart';

class COMMUNICATION extends StatelessWidget {
  const COMMUNICATION({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 45.0),
      child: Column(
        children: [
          Image.asset('assets/images/community.png'),
          SizedBox(
            height: 50.0,
          ),
          Text(
            'Introducing communities',
            style: TextStyle(
                fontSize: 14.0,
                letterSpacing: 2.0,
                color: community_text1,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 14.0,
          ),
          Text(
            ' Easily organise your related groups and send announcements. Now, ',
            style: TextStyle(
              fontSize: 11.0,
              fontStyle: FontStyle.italic,
              color: community_text2,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            ' your communities,like neighbourhoods or schools, can have their own ',
            style: TextStyle(
              fontSize: 11.0,
              fontStyle: FontStyle.italic,
              color: community_text2,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            ' space.',
            style: TextStyle(
              fontSize: 11.0,
              fontStyle: FontStyle.italic,
              color: community_text2,
            ),
          ),
          SizedBox(
            height: 35.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Newcommunity();
              }));
            },
            child: Text('start your community'),
            style: ElevatedButton.styleFrom(
              primary: app_Bar,
              onPrimary: tab_Col_sel,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60.0),
              ),
              textStyle: TextStyle(
                fontSize: 11.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w100,
              ),
              minimumSize: Size(300, 40),
            ),
          ),
        ],
      ),
    );
  }
}
