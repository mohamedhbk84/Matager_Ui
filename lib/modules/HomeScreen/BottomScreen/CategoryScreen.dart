import 'package:flutter/material.dart';
import 'package:matager/Constant.dart';
import 'package:matager/Shared/component/ComponentButton.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarTab(
        title: "Category",
        search: true,
        iconAlert: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(14),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.network(
                      "https://img.freepik.com/free-psd/hand-holding-smartphone-connect-bluetooth-speaker_53876-115875.jpg?size=338&ext=jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Smartphone",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              color: Color(0xffFF7A1A),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Item (20)",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3 - 10,
                  ),
                  Text(
                    "Filter",
                    style: TextStyle(color: Colors.white),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.filter_frames,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                  Container(
                    height: 60,
                    width: 1,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Sort",
                    style: TextStyle(color: Colors.white),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.sort,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            // GridView.builder(gridDelegate: gridDelegate, itemBuilder: (context, index)=>);
            Container(
                color: Colors.grey[300],
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 1.0,
                  crossAxisSpacing: 1.0,
                  childAspectRatio: 1 / 1.33,
                  children: List.generate(10, (index) => cardCategory()),
                )),
          ],
        ),
      ),
    );
  }

  Widget cardCategory() => Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          color: Colors.white,
          height: 130,
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
                          Image(
                            height: 120,
                            image: NetworkImage(
                                "https://image.freepik.com/free-psd/hand-holding-smartphone-connect-bluetooth-speaker_53876-115875.jpg"),
                            fit: BoxFit.fill,
                          ),
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
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "VIVo",
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
                            Row(
                              children: [
                                Text(
                                  "LE 3000",
                                  style: TextStyle(
                                      color: Color(0xffFF8024), fontSize: 16),
                                ),
                                Spacer(),
                                Container(
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "+Add ",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
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
