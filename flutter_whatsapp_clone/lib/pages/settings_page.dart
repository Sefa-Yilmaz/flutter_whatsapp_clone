import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text('Settings'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'assets/whatsapp.png',
                        height: 65,
                        width: 65,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Programmer',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Hey there, I am using whatsapp.',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.key),
                ),
                title: Text(
                  'Account',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  'Privacy,security. change number',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.message),
                ),
                title: Text(
                  'Chats',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  'Theme wallpapers, chat history',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.notifications),
                ),
                title: Text(
                  'Notifications',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  'Message, group & call tones',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.circle_outlined),
                ),
                title: Text(
                  'Storage and Data',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  'Network usage, outo-dowload',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.help_outline_outlined),
                ),
                title: Text(
                  'Help',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  'Help centre, contact us, privacy policy',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.people_alt),
                ),
                title: Text(
                  'Account',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: Column(
                  children: const [
                    Text(
                      'from',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      'Facebook',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
