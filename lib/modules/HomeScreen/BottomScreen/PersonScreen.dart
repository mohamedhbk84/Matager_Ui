import 'package:flutter/material.dart';
import 'package:matager/Shared/component/ComponentButton.dart';
import 'package:matager/modules/ForgetPassword/ChangePassword.dart';
import 'package:matager/modules/HomeScreen/Branch_Person/Chat/liveChat.dart';
import 'package:matager/modules/HomeScreen/Branch_Person/EditProfile/EditProfile.dart';
import 'package:matager/modules/HomeScreen/Branch_Person/MyCashBack.dart';
import 'package:matager/modules/HomeScreen/Branch_Person/Payment/payment.dart';
import 'package:matager/modules/HomeScreen/Branch_Person/RecentlyView/RecentlyView.dart';
import 'package:matager/modules/HomeScreen/Branch_Person/Review/Review.dart';
import 'package:matager/modules/HomeScreen/Branch_Person/address.dart';
import 'package:matager/modules/HomeScreen/Search/Filter.dart';

class PersonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 200,
                height: 100,
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-photo/emotional-bearded-male-has-surprised-facial-expression-astonished-look-dressed-white-shirt-with-red-braces-points-with-index-finger-upper-right-corner_273609-16001.jpg?size=338&ext=jpg",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Mohamed Ahmed",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Mohamed@gmail.com",
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildCatItem("assets/images/logo.png", "My order", () {
              navigateTo(context, FilterScreen());
            }),
            buildCatItem("assets/images/logo.png", "My CashBack", () {
              navigateTo(context, MyCashBack());
            }),
            buildCatItem("assets/images/icon- point.png", "My Address", () {
              navigateTo(context, AddressScreen());
            }),
            buildCatItem("assets/images/logo.png", "EditProfile", () {
              navigateTo(context, EditProfile());
            }),
            buildCatItem("assets/images/logo.png", "RecentlyView", () {
              navigateTo(context, RecentlyView());
            }),
            buildCatItem("assets/images/logo.png", "Rate & Review", () {
              navigateTo(context, Review());
            }),
            buildCatItem("assets/images/logo.png", "Change Password", () {
              navigateTo(context, ChangePasswordScreen());
            }),
            buildCatItem("assets/images/logo.png", "Language", () {}),
            buildCatItem("assets/images/logo.png", "Chat", () {
              navigateTo(context, LiveChat());
            }),
            buildCatItem("assets/images/logo.png", "Logout", () {
              navigateTo(context, PaymentScreen());
            }),
          ],
        ),
      ),
    );
  }

  Widget buildCatItem(String image, String text, Function onclick) => Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
        child: GestureDetector(
          onTap: onclick,
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Color(0xffFFEADA),
                    borderRadius: BorderRadius.circular(10)),
                child: Image(
                  image: AssetImage(image),
                  width: 20.0,
                  height: 20.0,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
              ),
            ],
          ),
        ),
      );
}
