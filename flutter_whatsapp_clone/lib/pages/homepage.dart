import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_whatsapp_clone/widgets/calls_widgets.dart';
import 'package:flutter_whatsapp_clone/widgets/chats_widgets.dart';
import 'package:flutter_whatsapp_clone/widgets/status_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              'WahatsApp',
              style: TextStyle(fontSize: 21),
            ),
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 15),
              child: Icon(
                Icons.search,
                size: 28,
              ),
            ),
            PopupMenuButton(
              onSelected: (selected) {
                if (selected == 5) {
                  Navigator.pushNamed(context, 'settingsPage');
                }
              },
              padding: const EdgeInsets.symmetric(vertical: 20),
              elevation: 10,
              iconSize: 28,
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: Icons.crop_16_9_outlined,
                  child: Text(
                    'New Group',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text(
                    'New broadcast',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text(
                    'Linked devices',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: 4,
                  child: Text(
                    'Starred messages',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: 5,
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              color: const Color(0xFF075E55),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  //tab 1
                  Container(
                    width: 24,
                    child: Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  //tab 2
                  Container(
                    width: 90,
                    child: Tab(
                      child: Row(
                        children: [
                          const Text('CHATS'),
                          const SizedBox(width: 8),
                          Container(
                            alignment: Alignment.center,
                            // padding: const EdgeInsets.all(10),
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: const Text(
                              '10',
                              style: TextStyle(
                                color: Color(0xFF075E55),
                                fontSize: 13,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //tab 3
                  Container(
                    width: 85,
                    child: Tab(
                      child: Text('STATUS'),
                    ),
                  ),
                  //tab 4
                  Container(
                    width: 85,
                    child: Tab(
                      child: Text('CALLS'),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  //tab 1 camera
                  Container(color: Colors.black),
                  //tab 2 chats
                  const ChatsWidget(),
                  //tab 3 status
                  const StatusWidgets(),
                  //tab 4 calls
                  const CallsWidgets(),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF075E55),
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}
