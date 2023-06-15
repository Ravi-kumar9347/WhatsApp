import 'package:flutter/material.dart';

import 'package:whats_app/pages/design_System.dart';

class SETTINGS extends StatelessWidget {
  const SETTINGS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: app_Bar,
          title: const Text(
            'Settings',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 20,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 5.0,
                  left: 2.0,
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.only(
                    left: 10.0,
                    right: 14.0,
                  ),
                  leading: Container(
                    width: 60,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          child: Container(
                            padding: EdgeInsets.only(
                              top: 6.0,
                            ),
                            child: Icon(
                              Icons.person,
                              size: 60.0,
                              color: tab_Col_sel,
                            ),
                          ),
                          radius: 65.0 / 2,
                          backgroundColor: tab_Col_Unsel,
                        ),
                      ],
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Ravi kumar',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: community_text1,
                        ),
                      ),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        'Design & Develop......',
                        style: TextStyle(fontSize: 12.0, color: tab_Col_Unsel),
                      ),
                      Image(
                        image: AssetImage(
                          'assets/images/Sparkling.png',
                        ),
                        width: 12.0,
                        height: 12.0,
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.qr_code,
                    color: app_Bar,
                  ),
                ),
              ),
              SizedBox(
                height: 3.0,
              ),
              Divider(
                height: 1.0,
                color: Color.fromARGB(255, 230, 229, 229),
              ),
              _settingsActions(Icons.key, "Account",
                  "Security notifications, change number"),
              _settingsActions(
                  Icons.face, "Avatar", "Create, edit, profile photo"),
              _settingsActions(Icons.lock, "Privacy",
                  "Block contacts, disappering messages"),
              _settingsActions(
                  Icons.chat, "Chats", "Theme, wallpapers, chat history"),
              _settingsActions(Icons.notifications, "Notifications",
                  "Message, group & call tones"),
              _settingsActions(Icons.circle_outlined, "Storage and data",
                  "Network usage, auto-download"),
              _settingsActions(Icons.web_asset_off_sharp, "App language",
                  "English (phones language)"),
              _settingsActions(Icons.help, "Help",
                  "Help centre, contact us, privacy policy"),
              _settingsActions(Icons.people, "Invite a friend", " "),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "from",
                    style: TextStyle(color: tab_Col_Unsel, fontSize: 12),
                  )
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.exposure_zero),
                  Text(
                    "Meta",
                    style: TextStyle(color: community_text1, fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ));
  }

  Column _settingsActions(IconData icon, String title, String subtitle) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 3.0,
        ),
        ListTile(
          leading: Icon(
            icon,
          ),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 12.0,
              color: community_text1,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(fontSize: 12.0, color: tab_Col_Unsel),
          ),
        )
      ],
    );
  }
}
