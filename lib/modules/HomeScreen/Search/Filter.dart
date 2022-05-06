import 'package:flutter/material.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart' as frs;

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double _lowerValue = 20.0;
  double _upperValue = 200.0;
  double minPrice = 20.0;
  double maxPrice = 2000.0;
  List<Map<String, dynamic>> color = [
    {
      'isSeleced': true,
    },
    {
      'isSeleced': false,
    },
    {
      'isSeleced': false,
    },
    {
      'isSeleced': false,
    },
    {
      'isSeleced': false,
    },
    {
      'isSeleced': false,
    },
  ];

  List<Map<String, dynamic>> size = [
    {
      'title': 'S',
      'isSelecedSize': true,
    },
    {
      'title': 'M',
      'isSelecedSize': false,
    },
    {
      'title': 'L',
      'isSelecedSize': false,
    },
    {
      'title': 'XL',
      'isSelecedSize': false,
    },
    {
      'title': 'XXL',
      'isSelecedSize': false,
    },
  ];
  int selectedItem = 0;
  int selectedSizeItem = 0;
  Widget listColor({int index, bool selectecd}) => InkWell(
        onTap: () {
          setState(() {
            color[selectedItem]['isSeleced'] = false;
            selectedItem = index;
            color[selectedItem]['isSeleced'] = true;
          });
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
          child: Padding(
            padding: EdgeInsets.only(left: 5, right: 5, top: 10),
            child: Container(
              width: 50,
              height: 50,
              decoration: selectecd
                  ? BoxDecoration(
                      color: index == 0
                          ? Colors.red
                          : index == 1
                              ? Colors.blue
                              : index == 2
                                  ? Colors.green
                                  : index == 3
                                      ? Colors.black
                                      : index == 4
                                          ? Colors.grey
                                          : Colors.tealAccent,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(50))
                  : BoxDecoration(
                      color: index == 0
                          ? Colors.red
                          : index == 1
                              ? Colors.blue
                              : index == 2
                                  ? Colors.green
                                  : index == 3
                                      ? Colors.black
                                      : index == 4
                                          ? Colors.grey
                                          : Colors.tealAccent,
                      borderRadius: BorderRadius.circular(50)),
              child: selectedItem == index
                  ? Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  : Text(""),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          Spacer(),
          Center(
            child: Text(
              " Filtter",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Spacer(),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Price Range",
              style: TextStyle(color: Color(0xffCDCDCD), fontSize: 16),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          frs.RangeSlider(
            min: minPrice,
            max: maxPrice,
            lowerValue: _lowerValue,
            upperValue: _upperValue,
            divisions: 50,
            showValueIndicator: true,
            valueIndicatorMaxDecimals: 4,
            onChanged: (double newLowerValue, double newUpperValue) {
              setState(() {
                _lowerValue = newLowerValue;
                _upperValue = newUpperValue;
              });
            },
            onChangeStart: (double startLowerValue, double startUpperValue) {
              print(
                  'Started with values: $startLowerValue and $startUpperValue');
            },
            onChangeEnd: (double newLowerValue, double newUpperValue) {
              print('Ended with values: $newLowerValue and $newUpperValue');
            },
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Color",
              style: TextStyle(color: Color(0xffCDCDCD), fontSize: 16),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 60.0,
                  child: new ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: color.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return listColor(
                          index: index, selectecd: color[index]['isSeleced']);
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Size",
              style: TextStyle(color: Color(0xffCDCDCD), fontSize: 16),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  height: 60.0,
                  child: new ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: size.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return listSize(
                        index: index,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(8),
            child: Center(
                child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xffFF7A1A),
                  borderRadius: BorderRadius.circular(60)),
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
            )),
          )
        ],
      ),
    );
  }

  Widget listSize({int index}) => InkWell(
        onTap: () {
          setState(() {
            size[selectedSizeItem]['isSelecedSize'] = false;
            selectedSizeItem = index;
            size[selectedSizeItem]['isSelecedSize'] = true;
          });
        },
        child: Padding(
          padding: EdgeInsets.only(left: 6, right: 6, top: 10),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Color(0xffD9D4D4),
                borderRadius: BorderRadius.circular(50)),
            child: selectedSizeItem == index
                ? Icon(
                    Icons.check,
                    color: Colors.white,
                  )
                : Center(child: Text("${size[index]['title']}")),
          ),
        ),
      );
}
