import 'package:demo_practice/pages/home_page.dart';
import 'package:demo_practice/styles/app_colors.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Spacer(),
                Text(
                  "HELLO! Welcome back",
                  style: TextStyle(
                    color: Color(0xff8C91FA),
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "LOGIN TO CONTINUE ",
                  style: TextStyle(
                      color: Color(0xff8C91FA),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  // decoration: InputDecoration(hintText: "username",border: InputBorder.none),
                  decoration: InputDecoration(
                    hintText: "username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.3),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                TextField(
                  // decoration: InputDecoration(hintText: "password",border: InputBorder.none,),
                  decoration: InputDecoration(
                    hintText: "password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.3),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        print("wajahat");
                      },
                      // style: TextButton.styleFrom(
                      //     foregroundColor: Colors.white,
                      // ),
                      child: Text(
                        "forget password",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 35,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        //   return HomePage();
                        // }));
                        Navigator.of(context).pushReplacementNamed('/main');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff040488),
                      ),
                      child: Text(
                        "LOG IN",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Spacer(),
                Text(
                  "Or sign in with google and facebook",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 430,
                  height: 35,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: ElevatedButton(
                        onPressed: () {
                          print("login with google");
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff040488)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/icons8-google-48.png",
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text("login with google"),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: 430,
                  height: 35,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: ElevatedButton(
                        onPressed: () {
                          print("login with google");
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff040488)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/icons8-facebook-48.png",
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text("login with facebook"),
                          ],
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "create a new account",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("sign up",
                            style: TextStyle(
                                color: Color(0xff8C91FA),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline)))
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
