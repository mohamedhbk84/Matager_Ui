import 'package:flutter/material.dart';
import 'package:matager/Shared/component/ComponentButton.dart';
import 'package:matager/modules/ForgetPassword/VerficationPassword.dart';
import 'package:matager/modules/Login/Login.dart';
import 'package:matager/modules/Register/Register.dart';

class ForgetPasswordScreen extends StatefulWidget {
  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                navigateTo(context, LoginScreen());
              },
              child: Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.black,
              )),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Please enter Your email and will send you ",
                style: TextStyle(color: Colors.grey.shade300, fontSize: 14),
              ),
              Text(
                "a link to update Your password .",
                style: TextStyle(color: Colors.grey.shade300, fontSize: 14),
              ),
              SizedBox(
                height: 40,
              ),
              defaultTextField(
                context: context,
                controller: emailcontroller,
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'ادخل البريد الالكتروني';
                  } else if (!value.toString().contains('@') ||
                      !value.toString().contains('.com')) {
                    return 'ex: example@mail.com';
                  } else {
                    return null;
                  }
                },
                onchanege: (String value) {
                  print(value);
                },
                type: TextInputType.emailAddress,
                label: "Email Address",
                icon: Icons.email,
                isShown: false,
                istrue: false,
              ),
              SizedBox(
                height: 20,
              ),
              defaultButtonMatager(
                  text: "Continue",
                  context: context,
                  onclick: () {
                    navigateTo(context, VerifactionPassword());
                  }),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont Have an account ?"),
                  GestureDetector(
                      onTap: () {
                        navigateTo(context, RegisterScreen());
                      },
                      child: Text(
                        " Sign Up",
                        style: TextStyle(color: Colors.red),
                      )),
                ],
              ),
            ],
          ),
        ));
  }
}
