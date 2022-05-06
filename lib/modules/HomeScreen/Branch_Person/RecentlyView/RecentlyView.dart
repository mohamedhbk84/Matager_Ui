import 'package:flutter/material.dart';
import 'package:matager/Shared/component/ComponentButton.dart';

class RecentlyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarTab(
        title: "RecentlyView",
        search: false,
        iconAlert: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Rectently viewed items ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                color: Colors.grey[100],
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  mainAxisSpacing: 1.0,
                  crossAxisSpacing: 1.0,
                  childAspectRatio: 1 / 1.3,
                  children: List.generate(10, (index) => cardCategory()),
                )),
          ),
        ],
      ),
    );
  }

  Widget cardCategory() => Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          color: Colors.white,
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Image(
                              height: 120,
                              image: NetworkImage(
                                  "https://image.freepik.com/free-psd/hand-holding-smartphone-connect-bluetooth-speaker_53876-115875.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                iconSize: 12,
                                icon: CircleAvatar(
                                  backgroundColor: Colors.red.withOpacity(.9),
                                  child: Center(
                                    child: Text(
                                      "-20%",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                iconSize: 12,
                                icon: CircleAvatar(
                                  backgroundColor:
                                      Colors.grey.shade300.withOpacity(.9),
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Adides Shoes",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 13.0,
                                height: 1.1,
                              ),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 15,
                                  child: Image.network(""),
                                ),
                                Text(
                                  'MobileShip',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.orange,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(".5"),
                              ],
                            ),
                            Text(
                              "Find Your best Phone",
                              maxLines: 2,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Text(
                                  "LE 3000",
                                  style: TextStyle(
                                      color: Color(0xffFF8024), fontSize: 16),
                                ),
                                Spacer(),
                                Text(
                                  "LE 3000",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                // Container(
                                //   width: 60,
                                //   height: 30,
                                //   decoration: BoxDecoration(
                                //       color: primaryColor,
                                //       borderRadius: BorderRadius.only(
                                //           topLeft: Radius.circular(20))),
                                //   child: Center(
                                //     child: Text(
                                //       "+Add ",
                                //       style: TextStyle(color: Colors.white),
                                //     ),
                                //   ),
                                // )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
