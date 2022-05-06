import 'package:flutter/material.dart';
import 'package:matager/Constant.dart';
import 'package:matager/Shared/component/ComponentButton.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int count = 0;
  int groupdelivery;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarTab(
        title: "Cart",
        search: false,
        iconAlert: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "2 items in your Cart ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Empty Cart ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            wishList(context: context),

            wishList(context: context),

            /////////////////////////////////
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                // maxLength: 300,
                maxLines: 1,
                minLines: 1,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(7),
                    child: SizedBox(
                      width: 90,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(width: 6),
                          // Container(
                          //   height: 40,
                          //   width: 40,
                          //   decoration: BoxDecoration(
                          //       color: Color(0xffFF7A1A),
                          //       borderRadius: BorderRadius.circular(6)),
                          //   child: Icon(
                          //     Icons.send,
                          //     color: Colors.white,
                          //   ),
                          // )
                          defaultButtonFieldMatager(
                              text: "Apply",
                              width: 80,
                              context: context,
                              onclick: () {})
                        ],
                      ),
                    ),
                  ),
                  hintText: "Prome Code",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Order Sumuary",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            defaultLine(),
            SizedBox(
              height: 3,
            ),
            rowText("Shopping fee", "L.E 00"),
            rowText("Shopping fee", "L.E 00"),
            rowText("Shopping fee", "L.E 00"),
            rowText("Shopping fee", "L.E 00"),
            rowTotal("Total", "L.E 00"),
            SizedBox(
              height: 6,
            ),
            defaultLine(),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Delivery method",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                    "Delivery To address ",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            //////// radio 2
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            defaultLine(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Address Details",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(color: primaryaddress),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade100),
                          child: Center(
                            child: Text(
                              "Change",
                              style: TextStyle(
                                  fontSize: 16, color: primaryaddress),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          " 6 October ,123 Street , Building 123",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Order amount ",
                            style: TextStyle(fontSize: 16),
                          ),
                          Spacer(),
                          Text(
                            "L.E 7000 ",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      defaultButtonMatager(
                          text: "Checkout", context: context, onclick: () {}),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget wishList({context}) => Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 143,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 60,
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
                          style: TextStyle(fontSize: 15),
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
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 1,
                  color: Colors.grey.shade300,
                ),
              ),
              Row(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onPressed: () {}),
                  Spacer(),
                  // InkWell(
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(right: 8.0),
                  //     child: Container(
                  //       width: 90,
                  //       height: 30,
                  //       decoration: BoxDecoration(
                  //           color: primaryColor,
                  //           borderRadius: BorderRadius.circular(4)),
                  //       child: Center(
                  //           child: Text(
                  //         "Buy Now",
                  //         style: TextStyle(color: Colors.white),
                  //       )),
                  //     ),
                  //   ),
                  // )
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            count--;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400.withOpacity(.6),
                              borderRadius: BorderRadius.circular(40)),
                          child: Center(
                            child: Text(
                              "-",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        " $count ",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            count++;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xffFF7A1A),
                              borderRadius: BorderRadius.circular(40)),
                          child: Center(
                            child: Text(
                              "+",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      );

  Widget rowText(String text1, String text2) => Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                    padding: EdgeInsets.only(left: 20), child: Text(text1))),
            Expanded(
                flex: 1,
                child: Text(
                  text2,
                )),
          ],
        ),
      );
  Widget rowTotal(String text1, String text2) => Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(text1,
                        style: TextStyle(fontWeight: FontWeight.bold)))),
            Expanded(
                flex: 1,
                child: Text(
                  text2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ],
        ),
      );
}
