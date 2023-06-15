import 'package:flutter/material.dart';
import 'package:whats_app/pages/design_System.dart';
import 'package:whats_app/pages/settings.dart';
import 'package:whats_app/pages/communication.dart';
import 'package:whats_app/pages/chats.dart';
import 'package:whats_app/pages/status.dart';
import 'package:whats_app/pages/calls.dart';
import 'package:whats_app/pages/newGroup.dart';
import 'package:whats_app/pages/newBroadcast.dart';
import 'package:whats_app/pages/linkedDevice.dart';
import 'package:whats_app/pages/starredMessages.dart';
import 'package:whats_app/pages/statusPrivacy.dart';
import 'package:whats_app/pages/payments.dart';
import 'package:whats_app/pages/camera.dart';

bool search = false;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;
  int _tabIndex = 0;
  bool _status = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 4, vsync: this, animationDuration: Duration(milliseconds: 1));
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      search = false;
      _currentIndex = _tabController.index;
      _searchToggle(_currentIndex);
    });
  }

  // @override
  // void dispose() {
  //   _tabController.dispose();
  //   super.dispose();
  // }

  _searchToggle(int index) {
    switch (index) {
      case 0:
        _tabIndex = index;
        _status = false;
        _buildDropDowns(index, context);
        break;
      case 1:
        _tabIndex = index;
        _status = false;
        _buildDropDowns(index, context);
        break;
      case 2:
        _tabIndex = index;
        _status = true;
        _buildDropDowns(index, context);

        break;
      case 3:
        _tabIndex = index;
        _status = false;
        _buildDropDowns(index, context);

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: search
          ? PreferredSize(child: Container(), preferredSize: Size(0, 0))
          : AppBar(
              backgroundColor: app_Bar,
              title: const Text(
                'WhatsApp',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                ),
              ),
              actions: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.photo_camera_outlined,
                        size: 30,
                        color: light_Icon,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CAMERA();
                        }));
                      },
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        _tabIndex == 0
                            ? SizedBox(
                                width: 0.0,
                              )
                            : IconButton(
                                icon: Icon(
                                  Icons.search,
                                  size: 30,
                                  color: light_Icon,
                                ),
                                onPressed: () {
                                  setState(() {
                                    search = true;
                                  });
                                },
                              ),
                        const SizedBox(
                          width: 2.0,
                        ),
                        _buildDropDowns(_tabIndex, context),
                      ],
                    )
                  ],
                ),
              ],
              bottom: PreferredSize(
                child: TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.people,
                        size: 30.0,
                      ),
                    ),
                    Tab(
                      text: 'Chats',
                    ),
                    Tab(
                      text: 'Status',
                    ),
                    Tab(
                      text: 'Calls',
                    )
                  ],
                  labelColor: tab_Col_sel,
                  unselectedLabelColor: tab_Col_Unsel,
                  labelStyle: TextStyle(fontSize: 15),
                  unselectedLabelStyle: TextStyle(fontSize: 15),
                  indicatorColor: tab_Col_sel,
                  onTap: (index) {
                    _handleTabSelection();
                  },
                ),
                preferredSize: Size.fromHeight(kToolbarHeight),
              ),
            ),
      body: TabBarView(
        controller: _tabController,
        children: [
          COMMUNICATION(),
          CHATS(),
          STATUS(),
          CALLS(),
        ],
      ),
    );
  }
}

// class buildAfterSearch extends StatelessWidget {
//   const buildAfterSearch({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return PreferredSize(
//       child: Column(
//         children: [
//           TextField(
//             decoration: InputDecoration(
//               hintText: 'Search',
//               prefixIcon: Icon(Icons.search),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//           )
//         ],
//       ),
//       preferredSize: Size.fromHeight(kToolbarHeight),
//     );
//   }
// }

PopupMenuButton _buildDropDowns(int index, BuildContext context) {
  switch (index) {
    case 1:
      return PopupMenuButton(
        child: Container(
          padding: EdgeInsets.only(top: 4.0),
          child: Icon(
            Icons.more_vert,
            color: light_Icon,
            size: 30.0,
          ),
        ),
        itemBuilder: (BuildContext context) {
          double itemHeight = 40.0;
          TextStyle _itemTextStyle = TextStyle(
            fontSize: 15.0,
          );
          return [
            PopupMenuItem(
              height: itemHeight,
              child: Text(
                'New group',
                style: _itemTextStyle,
              ),
              value: 1,
            ),
            PopupMenuItem(
              height: itemHeight,
              child: Text(
                'New broadcast',
                style: _itemTextStyle,
              ),
              value: 2,
            ),
            PopupMenuItem(
              height: itemHeight,
              child: Text(
                'Linked devices',
                style: _itemTextStyle,
              ),
              value: 3,
            ),
            PopupMenuItem(
              height: itemHeight,
              child: Text(
                'Starrred messages',
                style: _itemTextStyle,
              ),
              value: 4,
            ),
            PopupMenuItem(
              height: itemHeight,
              child: Text(
                'Payments',
                style: _itemTextStyle,
              ),
              value: 5,
            ),
            PopupMenuItem(
              height: itemHeight,
              child: Text(
                'Settings',
                style: _itemTextStyle,
              ),
              value: 6,
            ),
          ];
        },
        onSelected: (value) {
          switch (value) {
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NEWGROUP();
              }));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NEWBROADCAST();
              }));
              break;
            case 3:
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LINKEDDEVICE();
              }));
              break;
            case 4:
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return STARREDMESSAGES();
              }));
              break;
            case 5:
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PAYMENTS();
              }));
              break;
            case 6:
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SETTINGS();
                },
              ));
              break;
          }
        },
      );
      break;
    case 2:
      return PopupMenuButton(
        child: Container(
          padding: EdgeInsets.only(top: 4.0),
          child: Icon(
            Icons.more_vert,
            color: light_Icon,
            size: 30.0,
          ),
        ),
        itemBuilder: (BuildContext context) {
          double itemHeight = 40.0;
          TextStyle _itemTextStyle = TextStyle(
            fontSize: 15.0,
          );
          return [
            PopupMenuItem(
              height: itemHeight,
              child: Text(
                'Status Privacy',
                style: _itemTextStyle,
              ),
              value: 1,
            ),
            PopupMenuItem(
              height: itemHeight,
              child: Text(
                'Settings',
                style: _itemTextStyle,
              ),
              value: 2,
            ),
          ];
        },
        onSelected: (value) {
          switch (value) {
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return STATUSPRIVACY();
              }));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SETTINGS();
                },
              ));
              break;
          }
        },
      );
      break;
    case 3:
      return PopupMenuButton(
        child: Container(
          padding: EdgeInsets.only(top: 4.0),
          child: Icon(
            Icons.more_vert,
            color: light_Icon,
            size: 30.0,
          ),
        ),
        itemBuilder: (BuildContext context) {
          double itemHeight = 40.0;
          TextStyle _itemTextStyle = TextStyle(
            fontSize: 15.0,
          );
          return [
            PopupMenuItem(
              height: itemHeight,
              child: Text(
                'Clear call log',
                style: _itemTextStyle,
              ),
              value: 1,
            ),
            PopupMenuItem(
              height: itemHeight,
              child: Text(
                'Settings',
                style: _itemTextStyle,
              ),
              value: 2,
            ),
          ];
        },
        onSelected: (value) {
          switch (value) {
            case 1:
              _showAlertDialog(context);
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SETTINGS();
                },
              ));
              break;
          }
        },
      );
      break;
    default:
      return PopupMenuButton(
        child: Container(
          padding: EdgeInsets.only(top: 4.0),
          child: Icon(
            Icons.more_vert,
            color: light_Icon,
            size: 30.0,
          ),
        ),
        itemBuilder: (BuildContext context) {
          double itemHeight = 40.0;
          TextStyle _itemTextStyle = TextStyle(
            fontSize: 15.0,
          );
          return [
            PopupMenuItem(
              height: itemHeight,
              child: Text(
                'Settings',
                style: _itemTextStyle,
              ),
              value: 1,
            ),
          ];
        },
        onSelected: (value) {
          switch (value) {
            case 1:
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SETTINGS();
                },
              ));
              break;
          }
        },
      );
  }
}

void _showAlertDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: FractionallySizedBox(
            widthFactor: 1,
            heightFactor: 0,
          ),
          title: Text(
            "Do you want to clear your entire call log?",
            style: TextStyle(fontSize: 14, color: tab_Col_Unsel),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(fontSize: 14, color: app_Bar),
                )),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "OK",
                  style: TextStyle(fontSize: 14, color: app_Bar),
                )),
          ],
        );
      });
}
