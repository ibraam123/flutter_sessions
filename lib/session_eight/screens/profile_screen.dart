import 'package:flutter/material.dart';
import 'package:session_7_flutter_hult/session_eight/widgets/buttons_widget.dart';

import '../app_colors.dart';
import '../widgets/custom_container_test.dart';
import '../widgets/custom_fields.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String name = "Guest";
  int count = 0;

  late final TextEditingController nameController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Simple Profile App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.secondaryColor,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            CustomTextField(
              icon: const Icon(Icons.person),
              labelText: "Enter your name",
              controller: nameController,
            ),
            const SizedBox(height: 48),
            CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.primaryColor,
              child: const Icon(Icons.person, size: 50, color: Colors.white),
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: "Hello, ",
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: name,
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Welcome to the profile app. Please enter your name above to see the greeting message.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonsWidgets(
                  buttonType: "ElevatedButton",
                  name: "Update Name",
                  onTap: () {
                    if(nameController.text.isNotEmpty){
                      name = nameController.text;
                      setState(() {

                      });
                    }
                    nameController.clear();
                  },
                ),
                SizedBox(width: 8),
                ButtonsWidgets(
                  buttonType: "TextButton",
                  name: "Reset Name",
                  onTap: () {
                    setState(() {
                      name = "Guest";
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 28,),
            CustomContainerTest(count: count, onPress: (){
              setState(() {
                count++;
              });
            },),

          ],
        ),
      ),
    );
  }
}


class ProfileViewBodyTask extends StatefulWidget {
  const ProfileViewBodyTask({super.key});

  @override
  State<ProfileViewBodyTask> createState() => _ProfileViewBodyTaskState();
}

class _ProfileViewBodyTaskState extends State<ProfileViewBodyTask> {

  String name = "Guest";

  late final TextEditingController nameController;

  int count = 0;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(16),
      child: Column(
        children: [
          const SizedBox(height: 16),
          CustomTextField(
            icon: const Icon(Icons.person),
            labelText: "Enter your name",
            controller: nameController,
            onChanged: (value) {
              name = value;
            },
          ),
          const SizedBox(height: 48),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.red,
            child: const Icon(Icons.person, size: 50, color: Colors.white),
          ),
          SizedBox(height: 20),
          RichText(
            text: TextSpan(
              text: "Hello, ",
              style: TextStyle(
                fontSize: 36,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: name,
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Welcome to the profile app. Please enter your name above to see the greeting message.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonsWidgets(
                buttonType: "ElevatedButton",
                name: "Update Name",
                onTap: () {
                  setState(() {
                    name = nameController.text;
                  });
                },
              ),
              SizedBox(width: 8),
              ButtonsWidgets(
                buttonType: "TextButton",
                name: "Reset Name",
                onTap: () {
                  setState(() {
                    name = "Guest";
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 28,),
          CustomContainerTest(count: count, onPress: (){
            setState(() {
              count++;
            });
          },),

        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
  }
}
