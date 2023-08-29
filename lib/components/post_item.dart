import 'package:demo_practice/styles/app_text.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/user.jpg',
                width: 50,
                height: 50,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset('assets/temp/profile.jpg'),
          SizedBox(
            height: 12,
          ),
          Text("Flutter empowers developers to create beautiful and performant cross-platform apps using a single codebase. Its rich widget library, fast rendering, and expressive UI capabilities make it an ideal choice for building modern, responsive applications.",style: AppText.subtitle3,),
          Container(
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up_alt_rounded,)),
                Text("122"),
                IconButton(onPressed: (){}, icon: Icon(Icons.comment,)),
                Text("8"),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
