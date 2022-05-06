import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int groupdelivery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
            onPressed: () {}),
        title: Text("Payment"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Payment Method"),

            //////// radio 2
            Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.ac_unit),
                        Radio(
                          value: 1,
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => Color(0xffFF7A1A)),
                          groupValue: groupdelivery,
                          onChanged: (value) {
                            setState(() {
                              groupdelivery = value;
                            });
                          },
                        ),
                        Text(
                          "Visit",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => Color(0xffFF7A1A)),
                          groupValue: groupdelivery,
                          onChanged: (value) {
                            setState(() {
                              groupdelivery = value;
                            });
                          },
                        ),
                        Text(
                          "Visit Shop",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
