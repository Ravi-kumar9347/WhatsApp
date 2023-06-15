import 'package:flutter/material.dart';
import 'package:whats_app/pages/design_System.dart';
import 'package:whats_app/pages/home.dart';
import 'package:whats_app/pages/chatFloatingButton.dart';

class CHATS extends StatelessWidget {
  CHATS({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          search
              ? Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.arrow_back),
                          hintText: "Search...",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 22, top: 18),
                      height: 100,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              searchOptions(Icons.message, "Unread", 82.25),
                              SizedBox(
                                width: 10,
                              ),
                              searchOptions(Icons.image, "Photos", 82.25),
                              SizedBox(
                                width: 10,
                              ),
                              searchOptions(
                                  Icons.videocam_outlined, "Videos", 82.25),
                              SizedBox(
                                width: 10,
                              ),
                              searchOptions(
                                Icons.link,
                                "Links",
                                82.25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              searchOptions(Icons.gif, "GiFs", 73.67),
                              SizedBox(
                                width: 10,
                              ),
                              searchOptions(Icons.audiotrack, "Audio", 73.67),
                              SizedBox(
                                width: 10,
                              ),
                              searchOptions(
                                  Icons.file_present, "Documents", 108),
                              SizedBox(
                                width: 10,
                              ),
                              searchOptions(Icons.poll, "Polls", 73.67),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Container(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: EdgeInsets.only(
                left: 16.0,
                top: 16.0,
                bottom: 20.0,
                right: 10.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Chat_Widget(
                    path: "assets/images/azad.jpg",
                    name: "Azad",
                    chat_Action: Row(
                      children: [
                        Icon(
                          Icons.image,
                          color: chat_Color,
                          size: 18,
                        ),
                        SizedBox(width: 4.0),
                        Text(
                          "Photo",
                          style: TextStyle(fontSize: 15.0, color: chat_Color),
                        ),
                      ],
                    ),
                    state: false,
                  ),
                  Chat_Widget(
                    path: "assets/images/nivedha.jpg",
                    name: "Nivedha",
                    chat_Action: Row(
                      children: [
                        Text(
                          "Hlo Ravi.....",
                          style: TextStyle(fontSize: 15.0, color: chat_Color),
                        ),
                      ],
                    ),
                    state: true,
                    number: 1,
                    time: "8:50 pm",
                    num_color: Colors.white,
                  ),
                  Chat_Widget(
                    path: "assets/images/ravi.jpg",
                    name: "Reviiii",
                    chat_Action: Row(
                      children: [
                        Icon(
                          Icons.do_not_disturb,
                          size: 15.0,
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          "This message was deleted",
                          style: TextStyle(fontSize: 15.0, color: chat_Color),
                        ),
                      ],
                    ),
                    state: true,
                    number: 0,
                    time: "5:02 pm",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Chatfloatingbutton();
            }));
          },
          backgroundColor: app_Bar,
          child: Container(
            height: 50.0,
            width: 50.0,
            child: Icon(Icons.comment_rounded),
          )),
    );
  }

  Container searchOptions(IconData iconName, String textName, double boxWidth) {
    return Container(
      width: boxWidth,
      height: 35,
      decoration: BoxDecoration(
        color: rectangularBox,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconName,
            color: chat_Color,
            size: 15,
          ),
          SizedBox(width: 10),
          Text(
            textName,
            style: TextStyle(color: chat_Color, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class Chat_Widget extends StatelessWidget {
  String Path = "";
  String Name = "";
  late Row Chat_Action;
  late Color Num_color;
  int Number = 0;
  bool State = false;
  String Time = "";
  Chat_Widget(
      {required path,
      required name,
      required chat_Action,
      required state,
      num_color,
      number,
      time}) {
    Path = path;
    Name = name;
    Chat_Action = chat_Action;
    Num_color = num_color ?? Colors.white;
    Number = number ?? 0;
    State = state;
    Time = time ?? "";
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(Path),
                  radius: 25.0,
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Name,
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Chat_Action,
                  ],
                ),
              ],
            ),
            State
                ? Column(children: [
                    Text(
                      Time,
                      style: TextStyle(
                          color: Number != 0
                              ? Color.fromARGB(255, 2, 252, 11)
                              : tab_Col_Unsel),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Number != 0
                        ? Stack(
                            alignment: Alignment.center,
                            children: [
                              CircleAvatar(
                                radius: 10.0,
                                backgroundColor:
                                    Color.fromARGB(255, 2, 252, 11),
                              ),
                              Center(
                                child: Text(
                                  '${Number}',
                                  style: TextStyle(color: Num_color),
                                ),
                              ),
                            ],
                          )
                        : Icon(
                            Icons.volume_off,
                            size: 20.0,
                            color: tab_Col_Unsel,
                          )
                  ])
                : Text(
                    "Yesterday",
                    style: TextStyle(color: tab_Col_Unsel),
                  )
          ],
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
