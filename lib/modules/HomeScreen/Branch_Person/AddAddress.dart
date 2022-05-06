import 'package:flutter/material.dart';
import 'package:matager/Shared/component/ComponentButton.dart';

class AddAddress extends StatefulWidget {
  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController locationController = TextEditingController();
    int addNewLoaction;

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
              " Add address",
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
          defaultTextField(
            context: context,
            controller: nameController,
            type: TextInputType.name,
            istrue: true,
            isShown: true,
            validator: (String value) {
              if (value.isEmpty) {
                return 'Please enter the Name';
              }
            },
            icon: Icons.work,
            label: "Name",
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
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Radio(
                value: 1,
                fillColor:
                    MaterialStateColor.resolveWith((states) => Colors.green),
                groupValue: addNewLoaction,
                onChanged: (value) {
                  setState(() {
                    addNewLoaction = value;
                  });
                },
              ),
              Text(
                "Set as Default Address",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFF8B38)),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          defaultButtonMatager(
              text: "Save",
              context: context,
              onclick: () {
                navigateTo(context, AddAddress());
              }),
        ],
      ),
    );
  }
}
