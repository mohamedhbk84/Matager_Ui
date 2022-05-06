import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:matager/Constant.dart';
import 'package:matager/Shared/component/ComponentButton.dart';

// ignore: must_be_immutable
class WishListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarTab(
        title: "Wish List",
        search: false,
        iconAlert: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => wishList(context: context),
                separatorBuilder: (context, index) => SizedBox(
                      height: 2,
                    ),
                itemCount: 10),
          ],
        ),
      ),
    );
  }

  Widget wishList({context}) => Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: Image.network(
                        "https://img.freepik.com/free-photo/sport-running-shoes_1203-3414.jpg?size=338&ext=jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Running Shoes",
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                                radius: 15,
                                child: Image.network(
                                  "https://img.freepik.com/free-photo/sport-running-shoes_1203-3414.jpg?size=338&ext=jpg",
                                  fit: BoxFit.fill,
                                )),
                            SizedBox(
                              width: 6,
                            ),
                            Text("Sport Mall"),
                          ],
                        ),
                        Text(
                          "L.E 4000",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 1,
                  color: Colors.grey.shade300,
                ),
              ),
              Row(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onPressed: () {}),
                  Spacer(),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(4)),
                        child: Center(
                            child: Text(
                          "Buy Now",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
}
