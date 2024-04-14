import 'package:flutter/material.dart';
import 'package:login_page/pages/Edit_Profile.dart';

import 'my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  final void Function()? onProfileTap;
  final void Function()? onSignOut;

  const MyDrawer({
    Key? key,
    required this.onProfileTap,
    required this.onSignOut,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // header
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey[900],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 64,
                ),
                SizedBox(height: 8),
                Text(
                  "User",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          // home list title
          MyListTile(
            icon: Icons.person,
            text: 'View & Edit Profile',
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfile()),
              );
            },
          ),

           MyListTile(
             icon: Icons.notifications,
             text: 'Notification Center',
             onTap: () => Navigator.pop(context),
           ),
           MyListTile(
             icon: Icons.security,
             text: 'Security & Password',
             onTap: () => Navigator.pop(context),
           ),
           Divider(),
           Divider(),
          MyListTile(
             icon: Icons.admin_panel_settings,
             text: 'Manage Users',
             onTap: onProfileTap,
           ),
           MyListTile(
             icon: Icons.home,
             text: 'Manage Trainings',
             onTap: () => Navigator.pop(context),
           ),
          MyListTile(
             icon: Icons.home,
            text: 'Manage Lessons',
             onTap: () => Navigator.pop(context),
           ),
           MyListTile(
             icon: Icons.home,
             text: 'Manage Tags',
             onTap: () => Navigator.pop(context),
          ),
           Divider(),
          Divider(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: MyListTile(
                  icon: Icons.logout,
                  text: 'LOGOUT',
                  onTap: onSignOut,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

