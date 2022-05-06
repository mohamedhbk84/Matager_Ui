import 'package:flutter/material.dart';
import 'package:matager/Shared/component/ComponentButton.dart';

class CategoryBranchScreen extends StatefulWidget {
  @override
  _CategoryBranchScreenState createState() => _CategoryBranchScreenState();
}

class _CategoryBranchScreenState extends State<CategoryBranchScreen> {
  List<Map<String, dynamic>> category = [
    {
      'title': 'Fachion',
      'icon': 'assets/images/Fashion.png',
      'isSeleced': true,
    },
    {
      'title': 'Beauty',
      'icon': 'assets/images/make-up.png',
      'isSeleced': false,
    },
    {
      'title': 'Electronics',
      'icon': 'assets/images/logo.png',
      'isSeleced': false,
    },
    {
      'title': 'jewellery',
      'icon': 'assets/images/necklace.png',
      'isSeleced': false,
    },
    {
      'title': 'Footware',
      'icon': 'assets/images/running.png',
      'isSeleced': false,
    },
    {
      'title': 'Toys',
      'icon': 'assets/images/toys.png',
      'isSeleced': false,
    },
    {
      'title': 'Furniture',
      'icon': 'assets/images/furniture.png',
      'isSeleced': false,
    },
    {
      'title': 'Phones',
      'icon': 'assets/images/devices.png',
      'isSeleced': false,
    }
  ];

  int selectedItem = 0;
  Widget listMonth({int index, bool selectecd}) => InkWell(
        onTap: () {
          setState(() {
            category[selectedItem]['isSeleced'] = false;
            selectedItem = index;
            category[selectedItem]['isSeleced'] = true;
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 2, right: 2, left: 2, bottom: 2),
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width / 3 - 10,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Padding(
              padding: EdgeInsets.only(left: 5, right: 5, top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width / 3 - 10,
                height: 100,
                decoration: BoxDecoration(
                    color: selectedItem == index
                        ? Colors.grey.shade200
                        : Colors.white),
                child: Center(
                  child: Column(children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: selectedItem == index
                              ? Colors.white
                              : Colors.grey.shade300),
                      child: Image.asset(
                        "${category[index]['icon']}",
                        color: selectedItem == index
                            ? Color(0xffFE8127)
                            : Colors.grey.shade500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${category[index]['title']}",
                      style: TextStyle(
                          color: selectedItem == index
                              ? Color(0xffFE8127)
                              : Colors.grey.shade500),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      width: 1,
                      color: Colors.grey.shade500,
                    )
                  ]),
                ),
              ),
            ),
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarTab(
        title: "Category",
        search: true,
        iconAlert: true,
      ),
      body: Container(
        color: Colors.white,
        child: Row(
          children: [
            Column(
              children: [
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 3 - 5,
                    child: new ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: category.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return listMonth(
                            index: index,
                            selectecd: category[index]['isSeleced']);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                  color: Colors.grey.shade100,
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    mainAxisSpacing: 1.0,
                    crossAxisSpacing: 1.0,
                    childAspectRatio: 1 / 1.2,
                    children: List.generate(10, (index) => gridviewCategory()),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget gridviewCategory() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          color: Colors.white,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(color: Color(0xffE8DFFF)),
                    child: Image.network(
                      "https://image.freepik.com/free-psd/laptop-mock-up-isolated_1310-1458.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  CircleAvatar(
                    radius: 15,
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.white,
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Laptop / pc ",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      );
}
