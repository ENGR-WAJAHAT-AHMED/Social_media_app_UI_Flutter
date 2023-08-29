import 'package:demo_practice/components/app_text_field.dart';
import 'package:demo_practice/components/tool_bar.dart';
import 'package:demo_practice/styles/app_colors.dart';
import 'package:demo_practice/styles/app_text.dart';
import 'package:flutter/material.dart';

enum Gender {
  none,
  male,
  female,
  other,
}

class EditPage extends StatefulWidget {
  EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: "EDIT PROFILE"),
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      child: Image.asset(
                        'assets/temp/a.jpg',
                        width: 210,
                        height: 120,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 12,
                      right: 12,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Icon(
                          Icons.edit_sharp,
                          color: Colors.black,
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: 'first name'),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: 'last name'),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: 'phone no'),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: 'location'),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: 'birth day'),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: 'email id'),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: 'address'),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.only(left: 12,right: 12,top: 6),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Gender",style: AppText.body1.copyWith(
                      fontSize: 12,
                    ),),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity,vertical:VisualDensity.minimumDensity ),
                            title: Text("Male"),
                            value: Gender.male,
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.male;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity,vertical:VisualDensity.minimumDensity ),
                            title: Text("Female"),
                            value: Gender.female,
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.female;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity,vertical:VisualDensity.minimumDensity ),
                            title: Text("Other"),
                            value: Gender.other,
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = Gender.other;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
