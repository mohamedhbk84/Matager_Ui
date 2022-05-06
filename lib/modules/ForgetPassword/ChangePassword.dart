import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matager/Shared/component/ComponentButton.dart';
import 'package:matager/modules/ForgetPassword/Cubit/ForgetPasswordCubit.dart';
import 'package:matager/modules/ForgetPassword/Cubit/ForgetPasswordStates.dart';
import 'package:matager/modules/ForgetPassword/VerficationPassword.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController currentpasswordController = TextEditingController();
  TextEditingController newpasswordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => ForgetPasswordCubit(),
        child: BlocConsumer<ForgetPasswordCubit, ForgetPasswordStates>(
            listener: (context, states) => {},
            builder: (context, states) {
              return Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  leading: InkWell(
                    onTap: () {
                      navigateTo(context, VerifactionPassword());
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                  actions: [
                    Spacer(),
                    Row(
                      children: [
                        Text("Change Password"),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
                body: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      defaultTextField(
                          context: context,
                          controller: currentpasswordController,
                          onsubmit: (value) {},
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "Current Password";
                            }
                            return null;
                          },
                          onchanege: (String value) {
                            print(value);
                          },
                          suffixPressed: () {
                            ForgetPasswordCubit.get(context).changePassword();
                          },
                          type: TextInputType.visiblePassword,
                          label: "Current Password",
                          icon: Icons.lock_outline,
                          isShown:
                              ForgetPasswordCubit.get(context).shownPassword,
                          istrue: true,
                          suffixicon:
                              ForgetPasswordCubit.get(context).shownPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                      SizedBox(height: 15),
                      defaultTextField(
                          context: context,
                          controller: newpasswordController,
                          onsubmit: (value) {},
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "enter the NewPassword";
                            }
                            return null;
                          },
                          onchanege: (String value) {
                            print(value);
                          },
                          suffixPressed: () {
                            ForgetPasswordCubit.get(context).changePassword();
                          },
                          type: TextInputType.visiblePassword,
                          label: " New Password ",
                          icon: Icons.lock_outline,
                          isShown:
                              ForgetPasswordCubit.get(context).shownPassword,
                          istrue: true,
                          suffixicon:
                              ForgetPasswordCubit.get(context).shownPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                      SizedBox(height: 15),
                      defaultTextField(
                          context: context,
                          controller: confirmpasswordController,
                          onsubmit: (value) {},
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "Confirm the Password";
                            }
                            return null;
                          },
                          onchanege: (String value) {
                            print(value);
                          },
                          suffixPressed: () {
                            ForgetPasswordCubit.get(context).changePassword();
                          },
                          type: TextInputType.visiblePassword,
                          label: "Confirm The Password",
                          icon: Icons.lock_outline,
                          isShown:
                              ForgetPasswordCubit.get(context).shownPassword,
                          istrue: true,
                          suffixicon:
                              ForgetPasswordCubit.get(context).shownPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                      SizedBox(height: 40),
                      defaultButtonMatager(
                          text: "Change Password",
                          context: context,
                          onclick: () {
                            navigateTo(context, ChangePasswordScreen());
                          }),
                    ],
                  ),
                ),
              );
            }));
  }
}
