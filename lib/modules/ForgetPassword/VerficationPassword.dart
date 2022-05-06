import 'dart:async';

import 'package:flutter/material.dart';
import 'package:matager/Shared/component/ComponentButton.dart';
import 'package:matager/modules/ForgetPassword/ChangePassword.dart';
import 'package:matager/modules/ForgetPassword/ForgetPassword.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifactionPassword extends StatefulWidget {
  @override
  _VerifactionPasswordState createState() => _VerifactionPasswordState();
}

class _VerifactionPasswordState extends State<VerifactionPassword> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType> errorController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            navigateTo(context, ForgetPasswordScreen());
          },
          child: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            " Verification",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Please enter The OTP Code Send  ",
                style: TextStyle(color: Colors.grey.shade300, fontSize: 14),
              ),
              Text(
                "To You by sms.",
                style: TextStyle(color: Colors.grey.shade300, fontSize: 14),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
///////////////////////////// on OTP /////////////////////////////
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PinCodeTextField(
              appContext: context,
              pastedTextStyle: TextStyle(
                color: Colors.green.shade600,
                fontWeight: FontWeight.bold,
              ),
              length: 6,
              obscureText: true,
              obscuringCharacter: '*',
              obscuringWidget: FlutterLogo(
                size: 24,
              ),
              blinkWhenObscuring: true,
              animationType: AnimationType.fade,
              validator: (v) {
                if (v.length < 3) {
                  return "I'm from validator";
                } else {
                  return null;
                }
              },
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                selectedFillColor: Colors.white,
                activeFillColor: Colors.white,
              ),
              cursorColor: Colors.black,
              animationDuration: Duration(milliseconds: 300),
              enableActiveFill: true,
              backgroundColor: Colors.white,
              errorAnimationController: errorController,
              controller: textEditingController,
              keyboardType: TextInputType.number,
              boxShadows: [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.black12,
                  blurRadius: 10,
                ),
              ],
              onChanged: (value) {
                print(value);
                setState(() {
                  // currentText = value;
                });
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dont get a code ? "),
              GestureDetector(
                  onTap: () {},
                  child: Text(
                    " Send Again ",
                    style: TextStyle(color: Colors.red),
                  )),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          defaultButtonMatager(
              text: "Continue",
              context: context,
              onclick: () {
                navigateTo(context, ChangePasswordScreen());
              }),
        ],
      ),
    );
  }
}
