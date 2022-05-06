import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ReviewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              " Reviews",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Spacer(),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                "4.3",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 6,
              ),
              Column(
                children: [
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    itemSize: 20,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Text(
                    "Review (27)",
                    style: TextStyle(),
                  ),
                ],
              ),
            ],
          ),
          belowLine(),
          SizedBox(
            height: 5,
          ),
          // Row(
          //   children: [
          //     SizedBox(
          //       width: 5,
          //     ),
          //     RatingBar.builder(
          //       initialRating: 3,
          //       minRating: 1,
          //       itemSize: 15,
          //       direction: Axis.horizontal,
          //       allowHalfRating: true,
          //       itemCount: 5,
          //       itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          //       itemBuilder: (context, _) => Icon(
          //         Icons.star,
          //         color: Colors.amber,
          //       ),
          //       onRatingUpdate: (rating) {
          //         print(rating);
          //       },
          //     ),
          //     SizedBox(
          //       width: 4,
          //     ),
          //     LinearPercentIndicator(
          //       width: MediaQuery.of(context).size.width / 2,
          //       lineHeight: 10.0,
          //       percent: 0.8,
          //       backgroundColor: Colors.grey,
          //       progressColor: Colors.blue,
          //     ),
          //     SizedBox(
          //       width: 6,
          //     ),
          //     Text(
          //       "84",
          //       style: TextStyle(fontSize: 16),
          //     ),
          //   ],
          // ),

          SizedBox(
            height: 185,
            child: ListView.builder(
              itemBuilder: (context, index) => percentIndector(context),
              itemCount: 5,
            ),
          ),

          SizedBox(
            height: 10,
          ),
          belowLine(),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemBuilder: (context, index) => commitReview(context),
                itemCount: 5,
              ),
            ),
          ),
          // Container(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Row(
          //         children: [
          //           Container(
          //             width: MediaQuery.of(context).size.width / 5,
          //             child: CircleAvatar(
          //                 radius: 40,
          //                 backgroundImage: NetworkImage(
          //                     "https://image.freepik.com/free-photo/asian-businessman-male-portrait-sitting-desk-isolated-purple-background_466494-478.jpg")),
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.only(left: 8),
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Text(
          //                       "Mohamed Ahmed",
          //                       style: TextStyle(
          //                           fontSize: 14, fontWeight: FontWeight.bold),
          //                     ),
          //                     SizedBox(
          //                       width: 35,
          //                     ),
          //                     RatingBar.builder(
          //                       initialRating: 3,
          //                       minRating: 1,
          //                       itemSize: 15,
          //                       direction: Axis.horizontal,
          //                       allowHalfRating: true,
          //                       itemCount: 5,
          //                       itemPadding:
          //                           EdgeInsets.symmetric(horizontal: 1.0),
          //                       itemBuilder: (context, _) => Icon(
          //                         Icons.star,
          //                         color: Colors.amber,
          //                       ),
          //                       onRatingUpdate: (rating) {
          //                         print(rating);
          //                       },
          //                     ),
          //                   ],
          //                 ),
          //                 SizedBox(
          //                   height: 10,
          //                 ),
          //                 Row(
          //                   children: [Text("1 day ago")],
          //                 ),
          //               ],
          //             ),
          //           )
          //         ],
          //       ),
          //       // Column(
          //       //   children: [
          //       //     Expanded(
          //       //       child: Row(
          //       //         children: [
          //       //           Text(
          //       //             "Mohamed Ahmed",
          //       //             style: TextStyle(
          //       //                 fontSize: 17, fontWeight: FontWeight.bold),
          //       //           ),
          //       //           Spacer(),
          //       //           RatingBar.builder(
          //       //             initialRating: 3,
          //       //             minRating: 1,
          //       //             itemSize: 15,
          //       //             direction: Axis.horizontal,
          //       //             allowHalfRating: true,
          //       //             itemCount: 5,
          //       //             itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          //       //             itemBuilder: (context, _) => Icon(
          //       //               Icons.star,
          //       //               color: Colors.amber,
          //       //             ),
          //       //             onRatingUpdate: (rating) {
          //       //               print(rating);
          //       //             },
          //       //           ),
          //       //         ],
          //       //       ),
          //       //     ),
          //       //   ],
          //       // )

          //       SizedBox(
          //         width: MediaQuery.of(context).size.width / 5,
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(
          //           left: 50,
          //         ),
          //         child: Text(
          //           "Simple the dummay the text is the first reet mohammv mafj ",
          //           maxLines: 3,
          //           overflow: TextOverflow.ellipsis,
          //         ),
          //       ),
          //       SizedBox(
          //         height: 4,
          //       ),
          //       belowLine(),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }

  Widget belowLine() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 1,
          color: Colors.grey.shade400,
        ),
      );
  Widget percentIndector(context) => Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 2),
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              itemSize: 15,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              width: 4,
            ),
            LinearPercentIndicator(
              width: MediaQuery.of(context).size.width / 2,
              lineHeight: 10.0,
              percent: 0.8,
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              "84",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      );

  Widget commitReview(context) => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://image.freepik.com/free-photo/asian-businessman-male-portrait-sitting-desk-isolated-purple-background_466494-478.jpg")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mohamed Ahmed",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            itemSize: 15,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [Text("1 day ago")],
                      ),
                    ],
                  ),
                )
              ],
            ),
            // Column(
            //   children: [
            //     Expanded(
            //       child: Row(
            //         children: [
            //           Text(
            //             "Mohamed Ahmed",
            //             style: TextStyle(
            //                 fontSize: 17, fontWeight: FontWeight.bold),
            //           ),
            //           Spacer(),
            //           RatingBar.builder(
            //             initialRating: 3,
            //             minRating: 1,
            //             itemSize: 15,
            //             direction: Axis.horizontal,
            //             allowHalfRating: true,
            //             itemCount: 5,
            //             itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            //             itemBuilder: (context, _) => Icon(
            //               Icons.star,
            //               color: Colors.amber,
            //             ),
            //             onRatingUpdate: (rating) {
            //               print(rating);
            //             },
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // )

            SizedBox(
              width: MediaQuery.of(context).size.width / 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 55,
                right: 10,
              ),
              child: Text(
                "Simple the dummay the text is the first reet mohammv mafj ",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            belowLine(),
          ],
        ),
      );
}
