import 'package:flutter/material.dart';
import 'package:matager/Shared/component/ComponentButton.dart';

class MyCashBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarTab(
        title: "My CashBack",
        search: false,
        iconAlert: false,
      ),
      body: Column(
        children: [
          listCashBack(context: context),
          listCashBack(context: context),
        ],
      ),
    );
  }

  Widget listCashBack({context}) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 90,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                height: 90,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                child: Center(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://image.freepik.com/free-photo/asian-businessman-male-portrait-sitting-desk-isolated-purple-background_466494-478.jpg"),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width / 1.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SportMall",
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text("Cash Reward: 40 L.E"),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      height: 30,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Color(0xff418CCB),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "visit shop",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
