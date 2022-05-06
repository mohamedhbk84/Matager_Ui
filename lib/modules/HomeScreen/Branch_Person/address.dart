import 'package:flutter/material.dart';
import 'package:matager/Constant.dart';
import 'package:matager/Shared/component/ComponentButton.dart';
import 'package:matager/modules/HomeScreen/Branch_Person/AddAddress.dart';

class AddressScreen extends StatefulWidget {
  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  int addressValue;
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
              "Address",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Spacer(),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          listaddress(context, true),
          listaddress(context, false),
          SizedBox(
            height: 40,
          ),
          defaultButtonMatager(
              text: "Add New Address",
              context: context,
              onclick: () {
                navigateTo(context, AddAddress());
              }),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  Widget listaddress(context, bool isselected) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 170,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Home address",
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      "Edit",
                      style: TextStyle(fontSize: 16, color: Color(0xffFF8B38)),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 1,
                  color: Colors.grey.shade400,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "6 October , 123 Street , building 123",
                        style: TextStyle(color: Color(0xff858585)),
                      ),
                    ],
                  )),
              Row(
                children: [
                  Container(
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isselected = !isselected;
                              print("object");
                            });
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: isselected
                                    ? Color(0xffFF8B38)
                                    : Colors.grey.shade400),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isselected = !isselected;
                              print("object");
                            });
                          },
                          child: Text(
                            "Set as Default Address ",
                            style: TextStyle(
                                color: isselected == true
                                    ? Color(0xffFF8B38)
                                    : Colors.grey.shade400,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryColor),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade100),
                  child: Center(
                    child: Text(
                      "Select This Address",
                      style: TextStyle(fontSize: 16, color: primaryColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
