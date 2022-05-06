import 'package:flutter/material.dart';
import 'package:matager/Shared/component/ComponentButton.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          Spacer(),
          Center(
            child: Text(
              " Edit Profile",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Spacer(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Color(0xff666666)),
                child: Center(
                  child: IconButton(
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: defaultTextField(
                  context: context,
                  controller: nameController,
                  type: TextInputType.name,
                  icon: Icons.person,
                  label: "Name",
                  isShown: false,
                  istrue: false),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: defaultTextField(
                  context: context,
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  icon: Icons.email,
                  label: "Email",
                  isShown: false,
                  istrue: false),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: defaultTextField(
                context: context,
                controller: locationController,
                type: TextInputType.streetAddress,
                istrue: true,
                isShown: true,
                icon: Icons.location_on,
                label: "Location",
                suffixicon: Icons.arrow_drop_down,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: defaultTextField(
                context: context,
                controller: passwordController,
                type: TextInputType.visiblePassword,
                istrue: true,
                isShown: true,
                icon: Icons.lock_open,
                label: "Password",
              ),
            ),
            // defaultTextField(
            //   context: context,
            //   controller: passwordController,
            //   type: TextInputType.visiblePassword,
            //   icon: Icons.lock_open,
            //   label: "Password",
            //   istrue: true,
            // ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
