import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:matager/Constant.dart';
import 'package:matager/modules/HomeScreen/Branch_Person/Cardbassket/Cart.dart';

Widget defaultButton(
        {double width, Color background, Function function, String text}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 2.0,
          ),
        ],
      ),
      child: TextButton(
          onPressed: function,
          child: Text(
            text,
            style: TextStyle(color: Color(0xff22718B)),
          )),
    );

Widget defaultButtonMatager({String text, context, Function onclick}) =>
    GestureDetector(
      onTap: onclick,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width - 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient:
                LinearGradient(colors: [Color(0xffF26F21), Color(0xff19ABDF)])),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
Widget defaultButtonFieldMatager(
        {String text, context, Function onclick, double width}) =>
    GestureDetector(
      onTap: onclick,
      child: Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient:
                LinearGradient(colors: [Color(0xffF26F21), Color(0xff19ABDF)])),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );

Widget defaultTextButton({Function function, String text}) =>
    TextButton(onPressed: function, child: Text(text));
Widget defaultLine() => Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 1,
        color: Colors.grey.shade300,
      ),
    );
void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => widget),
    (Route<dynamic> route) => false);

////////////////// Statistics button   الاحصائيات

Widget statisticsButton({Color background, String text, String textnumber}) =>
    Container(
      width: 100,
      height: 90,
      decoration: BoxDecoration(
          color: background, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 14,
          ),
          Container(
            height: 25,
            child: Text(
              textnumber,
              style: TextStyle(
                  color: Color(0xff186983),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 45,
            child: Text(text,
                style: TextStyle(
                  color: Color(0xff3E8290),
                  fontSize: 17,
                  height: 1.0,
                  letterSpacing: 1.0,
                ),
                maxLines: 2,
                // overflow: TextOverflow.clip,
                textAlign: TextAlign.center),
          ),
        ],
      ),
    );

//// //////   /////    ////   /////   ///////  / //////
Widget defaultTextField(
    {TextEditingController controller,
    Function onsubmit,
    Function onchanege,
    Function validator,
    bool isShown,
    String label,
    String hint,
    IconData icon,
    IconData suffixicon,
    Function onsave,
    bool istrue = true,
    Function suffixPressed,
    Function ontap,
    TextInputType type,
    @required BuildContext context}) {
  return TextFormField(
    controller: controller,
    onFieldSubmitted: onsubmit,
    onChanged: onchanege,
    keyboardType: type,
    onSaved: onsave,
    onTap: ontap,
    validator: validator,
    obscureText: isShown,
    decoration: InputDecoration(
      labelText: label,
      hintText: hint,
      prefixIcon: Icon(icon),
      suffixIcon: suffixicon != null
          ? IconButton(onPressed: suffixPressed, icon: Icon(suffixicon))
          : null,
      contentPadding: EdgeInsets.all(10),
      border: OutlineInputBorder(),
    ),
  );
}

// ignore: must_be_immutable
class CustomAppBarTab extends StatelessWidget implements PreferredSizeWidget {
  String title;
  bool search;
  bool iconAlert;
  CustomAppBarTab({
    @required this.title,
    this.search = false,
    this.iconAlert = false,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        child: Expanded(
          child: Column(
            children: [
              AppBar(
                backgroundColor: primaryColor,
                elevation: 0,
                centerTitle: true,
                leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back),
                  // Image.asset("assets/images/Group 1558.png")
                ),
                title: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.normal),
                ),
                actions: [
                  if (iconAlert == true)
                    IconButton(
                      icon: Icon(Icons.add_alert),
                      onPressed: () {
                        // navigateTo(context, const AllNotificationScreen());
                      },
                    ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      navigateTo(context, CartScreen());
                    },
                  ),
                ],
              ),
              if (search == true)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 30,
                        child: TextField(
                          controller: controller,
                          cursorHeight: 10,
                          decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Search",
                            filled: true,
                            suffixIcon: Icon(
                              Icons.search,
                              color: primaryColor,
                            ),
                            fillColor: Colors.white,
                            hintStyle: const TextStyle(
                                color: Color(0xffC8C8C8), fontSize: 11),
                          ),
                          toolbarOptions: ToolbarOptions(),
                        ),
                      )),
                      SizedBox(
                        width: 4,
                      ),
                      // Container(
                      //   height: 50,
                      //   width: 50,
                      //   decoration: const BoxDecoration(
                      //     image: DecorationImage(
                      //       image: AssetImage("assets/images/Group 1890.png"),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(search == true ? 110 : 75);
}

///////
///
