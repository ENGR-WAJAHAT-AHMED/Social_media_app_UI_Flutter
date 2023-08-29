import 'package:demo_practice/components/tool_bar.dart';
import 'package:demo_practice/styles/app_text.dart';
import 'package:flutter/material.dart';


enum ProfileMenu{
 edit,
 logout,
}
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: 'PROFILE PAGE',
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value){
              switch(value){
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed('/editprofile');
                  print("wajahat ahmed");
                  break;
                case ProfileMenu.logout:
                  print("wajahat");
                  break;
                default:

              }
            },
            // icon: Icon(Icons.expand_more_outlined
            // ),
            itemBuilder: (context){
          return [
            PopupMenuItem(child: Row(
              children: [
                Icon(Icons.edit),
                Text("Edit"),
              ],
            ),value: ProfileMenu.edit,),
            PopupMenuItem(child: Row(
              children: [
                Icon(Icons.logout),
                Text("Log Out"),
              ],
            ),value: ProfileMenu.logout,),
          ];
          },
          )
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            child: Image.asset(
              'assets/temp/a.jpg',
              width: 210,
              height: 120,
            ),
          ),
          SizedBox(height: 24),
          Text(
            "ENGR_WAJAHAT AHMED",
            style: AppText.header2,
          ),
          SizedBox(height: 12),
          Text(
            "KARACHI",
            style: AppText.subtitle3,
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("117k", style: AppText.header2),
                  Text("Followers"),
                ],
              ),
              Column(
                children: [
                  Text("119", style: AppText.header2),
                  Text("Posts"),
                ],
              ),
              Column(
                children: [
                  Text("536", style: AppText.header2),
                  Text("Following"),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
