import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:matager/Constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.blue,
              ),
              onPressed: () {}),
          elevation: 0,
          centerTitle: true,
          title: Column(
            children: [
              Text(
                "Location",
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Gizza",
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
            ],
          ),
          actions: [
            Container(
              child: Image.asset("assets/images/logo.png"),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            labelText: "Search Your Product",
                            focusColor: Colors.white,
                            hoverColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: IconButton(
                                icon: Icon(Icons.search), onPressed: () {}),
                            fillColor: Colors.white,
                            hintStyle: const TextStyle(
                                color: Colors.white, fontSize: 11),
                          ),
                          toolbarOptions: ToolbarOptions(),
                        ),
                      ),
                      SizedBox(
                        width: 0,
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.add_alert,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
              ),
              CarouselSlider(
                items: ['']
                    .map((e) => Image(
                          image: NetworkImage(
                              'https://img.freepik.com/free-psd/hand-holding-smartphone-connect-bluetooth-speaker_53876-115875.jpg?size=338&ext=jpg'),
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ))
                    .toList(),
                options: CarouselOptions(
                  height: 200,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  scrollDirection: Axis.horizontal,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  viewportFraction: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    screenOffer(icon: Icons.category, text: "category"),
                    screenOffer(icon: Icons.flash_auto, text: "Flash Sales"),
                    screenOffer(icon: Icons.point_of_sale, text: "Offers"),
                    screenOffer(icon: Icons.cast_sharp, text: "Cash back"),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Fetured Items"),
                        Spacer(),
                        Text(
                          "ShowAll",
                          style: TextStyle(color: primaryColor),
                        )
                      ],
                    ),
                  ),
                  Container(
                      color: Colors.grey[300],
                      child: GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        mainAxisSpacing: 1.0,
                        crossAxisSpacing: 1.0,
                        childAspectRatio: 1 / 1.33,
                        children: List.generate(4, (index) => featuredItem()),
                      )),
                ],
              ),
              //////////////////Sponers
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade300,
                child: Column(
                  children: [
                    Text("Sponers"),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => sponerScreen(),
                        itemCount: 10,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
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
  Widget screenOffer({IconData icon, String text}) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.grey.shade300,
              ),
              child: Icon(
                icon,
                color: Color(0xffFF671C),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(text),
          ],
        ),
      );

  /////////////////////////////////////////

  Widget featuredItem() => Padding(
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

  Widget sponerScreen() => Padding(
        padding: EdgeInsets.only(left: 9, right: 9),
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: Image.network(
                    'https://img.freepik.com/free-psd/hand-holding-smartphone-connect-bluetooth-speaker_53876-115875.jpg?size=338&ext=jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text("data"),
            ],
          ),
        ),
      );
}
