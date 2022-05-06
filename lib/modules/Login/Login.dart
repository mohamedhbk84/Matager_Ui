import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matager/Shared/component/ComponentButton.dart';
import 'package:matager/modules/ForgetPassword/ForgetPassword.dart';
import 'package:matager/modules/HomeScreen/BottomNavagation/BottomNavagationBar.dart';
import 'package:matager/modules/Login/Cubit/cubit.dart';
import 'package:matager/modules/Login/Cubit/states.dart';
import 'package:matager/modules/OnBoarding/OnBoarding.dart';
import 'package:matager/modules/Register/Register.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool _checkbox = false;
  bool shownPassword = true;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, LoginStates>(
            listener: (context, states) => {},
            builder: (context, states) {
              return Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  leading: InkWell(
                      onTap: () {
                        navigateTo(context, OnBoarding());
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 20,
                        color: Colors.black,
                      )),
                ),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Welcome Back!",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Sign in To continue",
                          style: TextStyle(
                              color: Colors.grey.shade300, fontSize: 14),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        defaultTextField(
                          context: context,
                          controller: emailController,
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
                        defaultTextField(
                            context: context,
                            controller: passwordController,
                            onsubmit: (value) {},
                            validator: (String value) {
                              if (value.isEmpty) {
                                return "enter the Password";
                              }
                              return null;
                            },
                            onchanege: (String value) {
                              print(value);
                            },
                            suffixPressed: () {
                              LoginCubit.get(context).changePassword();
                            },
                            type: TextInputType.visiblePassword,
                            label: "Password Address",
                            icon: Icons.lock_outline,
                            isShown: LoginCubit.get(context).shownPassword,
                            istrue: true,
                            suffixicon: LoginCubit.get(context).shownPassword
                                ? Icons.visibility_off
                                : Icons.visibility),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Colors.green,
                              value: _checkbox,
                              onChanged: (value) {
                                setState(() {
                                  _checkbox = !_checkbox;
                                });
                              },
                            ),
                            Text('Remember me'),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        defaultButtonMatager(
                            text: "Sign in",
                            context: context,
                            onclick: () {
                              navigateTo(context, BottomNavagationBarScreen());
                            }),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                navigateTo(
                                  context,
                                  ForgetPasswordScreen(),
                                );
                              },
                              child: Text("Forgot Password ?  "),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
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
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "---- or ----",
                              style: TextStyle(color: Colors.grey.shade300),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 100,
                                width: 80,
                                child: Image(
                                  image: AssetImage(
                                      "assets/images/Group 1114.png"),
                                  fit: BoxFit.cover,
                                )),
                            Container(
                                height: 100,
                                width: 80,
                                child: Image(
                                  image: AssetImage(
                                      "assets/images/Group 1115.png"),
                                  fit: BoxFit.cover,
                                )),
                            Container(
                                height: 100,
                                width: 80,
                                child: Image(
                                  image: AssetImage(
                                    "assets/images/Group 1113.png",
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
