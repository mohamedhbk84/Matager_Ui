import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:matager/Shared/component/ComponentButton.dart';
import 'package:matager/modules/HomeScreen/Branch_Person/Review/Reviews.dart';

class Review extends StatelessWidget {
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
        centerTitle: true,
        title: Text(
          "Review",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          // Spacer(),
          // Center(
          //   child: Text(
          //     " Review",
          //     style: TextStyle(color: Colors.black, fontSize: 18),
          //   ),
          // ),
          // Spacer(),
          IconButton(
              icon: Icon(
                Icons.add_alert_outlined,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Review Product",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      itemSize: 30,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      unratedColor: Colors.grey,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Review Shop",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      itemSize: 30,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      unratedColor: Colors.grey,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Write a comment",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  Text(
                    "Max Line 500",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                // maxLength: 300,
                maxLines: 7,
                minLines: 5,
                maxLength: 500,
                decoration: InputDecoration(
                  // suffixIcon:
                  //  Padding(
                  //   padding: EdgeInsets.all(7),
                  //   child: SizedBox(
                  //     width: 50,
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.end,
                  //       children: [
                  //         SizedBox(width: 6),
                  //         Container(
                  //           height: 40,
                  //           width: 40,
                  //           decoration: BoxDecoration(
                  //               color: Color(0xffFF7A1A),
                  //               borderRadius: BorderRadius.circular(6)),
                  //           child: Icon(
                  //             Icons.send,
                  //             color: Colors.white,
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),

                  hintText: "Comment Your message .... ",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 35,
                    width: 135,
                    decoration: BoxDecoration(
                      color: Color(0xffFF7A1A),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: GestureDetector(
                      onTap: () {
                        navigateTo(context, ReviewsScreen());
                      },
                      child: Text(
                        "Submit Review",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
