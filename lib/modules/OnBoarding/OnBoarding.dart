import 'package:flutter/material.dart';
import 'package:matager/Shared/component/ComponentButton.dart';
import 'package:matager/modules/Login/Login.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoradingModel {
  final String image;
  final String title;
  final String body;
  final String appBarTitle;
  BoradingModel({this.image, this.body, this.title, this.appBarTitle});
}

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<BoradingModel> borading = [
    BoradingModel(
        image: 'assets/images/logo.png',
        body: 'You Have a 100K+ Prouducts .choose ',
        title: 'Your Product From other shops ',
        appBarTitle: 'Choose Product'),
    BoradingModel(
        image: 'assets/images/logo.png',
        body: 'Esay Checkout & safe Payment method . Trusted By ',
        title: 'Our Customers from all over the World .',
        appBarTitle: 'Esay & Safe Payment'),
    BoradingModel(
        image: 'assets/images/logo.png',
        body: 'Realible And Fast Delivery.We deliver ',
        title: 'Your Product the fasted Way Poassiable ',
        appBarTitle: 'FastDelivery'),
    BoradingModel(
        image: 'assets/images/logo.png',
        body: 'Find Your Nearest Shop and',
        title: 'Product ',
        appBarTitle: 'Find Nearest Location')
  ];

  int indexapp;
  var boardController = PageController();
  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (int index) {
                    if (index == borading.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                    } else {
                      setState(() {
                        isLast = false;
                        indexapp = index;
                      });
                    }
                  },
                  controller: boardController,
                  itemBuilder: (context, index) =>
                      buildBordingitem(borading[index]),
                  itemCount: borading.length,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text(
                  //   "indicator",
                  // ),
                  SizedBox(
                    width: 40,
                  ),
                  SmoothPageIndicator(
                      effect: ExpandingDotsEffect(
                        dotColor: Colors.grey,
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: Colors.blue,
                        spacing: 10,
                      ),
                      controller: boardController,
                      count: borading.length),

                  SizedBox(
                    height: 50,
                  ),
                  defaultButtonMatager(
                      text: "Continue",
                      context: context,
                      onclick: () {
                        if (isLast) {
                          navigateAndFinish(context, LoginScreen());
                        } else {
                          boardController.nextPage(
                              duration: Duration(
                                milliseconds: 500,
                              ),
                              curve: Curves.fastLinearToSlowEaseIn);
                        }
                      }),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      navigateAndFinish(context, LoginScreen());
                    },
                    child: Center(
                        child: Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                  ),
                ],
              )
            ],
          ),
        ));
  }

  Widget buildBordingitem(BoradingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              model.appBarTitle,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Image(
            image: AssetImage(
              model.image,
            ),
            width: MediaQuery.of(context).size.width - 100,
            height: MediaQuery.of(context).size.height / 2 - 80,
            fit: BoxFit.fill,
          ),

          // SizedBox(
          //   height: 30,
          // ),
          Center(
            child: Text(
              model.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              model.body,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
        ],
      );
}
