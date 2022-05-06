import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matager/Shared/component/ComponentButton.dart';
import 'package:matager/modules/Login/Login.dart';

import 'package:matager/modules/Register/Cubit/RegisterCubit.dart';
import 'package:matager/modules/Register/Cubit/RegisterStates.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var locationController = TextEditingController();
  bool shownPassword = true;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, states) => {},
        builder: (context, states) {
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
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
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
                          controller: nameController,
                          type: TextInputType.name,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "Please enter the name";
                            }
                          },
                          icon: Icons.person,
                          label: "Name",
                          isShown: false,
                          istrue: false),
                      SizedBox(
                        height: 15,
                      ),
                      defaultTextField(
                          context: context,
                          controller: emailController,
                          type: TextInputType.emailAddress,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "Please enter the Email";
                            }
                          },
                          icon: Icons.email,
                          label: "Email",
                          isShown: false,
                          istrue: false),
                      SizedBox(
                        height: 15,
                      ),
                      defaultTextField(
                        context: context,
                        controller: passwordController,
                        type: TextInputType.visiblePassword,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter the Password';
                          }
                        },
                        icon: Icons.lock_open,
                        label: "Password",
                        isShown: RegisterCubit.get(context).showPassword,
                        suffixPressed: () {
                          RegisterCubit.get(context).changeShowPassword();
                        },
                        suffixicon: RegisterCubit.get(context).showPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        istrue: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      defaultTextField(
                        context: context,
                        controller: locationController,
                        type: TextInputType.streetAddress,
                        istrue: true,
                        isShown: true,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter the Location';
                          }
                        },
                        icon: Icons.location_on,
                        label: "Location",
                        suffixicon: Icons.arrow_drop_down,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      defaultButtonMatager(
                          text: "Sign Up", context: context, onclick: () {}),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Aready Have an account ?"),
                            GestureDetector(
                                onTap: () {
                                  navigateTo(context, LoginScreen());
                                },
                                child: Text(
                                  " Sign in",
                                  style: TextStyle(color: Colors.red),
                                )),
                          ]),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
