import 'package:flutter/material.dart';

class LiveChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                " Live Chat",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            Spacer(),
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        child: Row(
                          mainAxisAlignment: index % 2 == 0
                              ? MainAxisAlignment.start
                              : MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              width: MediaQuery.of(context).size.width / 1.4,
                              decoration: BoxDecoration(
                                color: index % 2 == 0
                                    ? Color(0xffEEEEEE)
                                    : Color(0xffFFD6B8),
                                borderRadius: BorderRadius.only(
                                    topLeft: index % 2 == 0
                                        ? Radius.circular(0)
                                        : Radius.circular(10),
                                    bottomLeft: index % 2 == 0
                                        ? Radius.circular(10)
                                        : Radius.circular(10),
                                    bottomRight: index % 2 == 0
                                        ? Radius.circular(10)
                                        : Radius.circular(10),
                                    topRight: index % 2 == 0
                                        ? Radius.circular(10)
                                        : Radius.circular(0)),
                              ),
                              child: Text(
                                  "Your Msg Here meessage For Employeee To Send Notifcation for the .......",
                                  maxLines: 6),
                            )
                          ],
                        ),
                      );
                    })),
            ////////////////////the text to send the message in bottom screen///////
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                textDirection: TextDirection.ltr,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white),
                    child: Center(
                      child: Icon(
                        Icons.attach_file,
                        color: Color(0xffFF7A1A),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextFormField(
                      // maxLength: 300,
                      maxLines: 5,
                      minLines: 1,
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(7),
                          child: SizedBox(
                            width: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(width: 6),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFF7A1A),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Icon(
                                    Icons.send,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        hintText: "Start Chat",
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
