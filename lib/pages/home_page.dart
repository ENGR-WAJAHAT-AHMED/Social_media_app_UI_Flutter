import 'package:demo_practice/components/post_item.dart';
import 'package:demo_practice/components/tool_bar.dart';
import 'package:demo_practice/styles/app_colors.dart';
import 'package:demo_practice/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    multipleitemprint();
    return Scaffold(
      appBar: ToolBar(title: 'HOME PAGE',actions: [
        IconButton(
            onPressed: (){
              Navigator.of(context).pushNamed('/nearby');
              print('icon pressed');
            },
            icon: SvgPicture.asset("assets/svg/ic_location.svg")),

      ],),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 24,);

        },
      ),
    );
  }

  multipleitemprint() {
    for (var i = 0; i < 10; i++) {
      users.add("user number$i");
    }
  }
}
