import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matager/modules/HomeScreen/HomeCubit.dart/HomeCubit.dart';
import 'package:matager/modules/HomeScreen/HomeCubit.dart/HomeStates.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavagationBarScreen extends StatefulWidget {
  @override
  _BottomNavagationBarScreenState createState() =>
      _BottomNavagationBarScreenState();
}

class _BottomNavagationBarScreenState extends State<BottomNavagationBarScreen> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppHomeCubit(),
      child: BlocConsumer<AppHomeCubit, AppHomeStates>(
          listener: (context, states) => {},
          builder: (context, states) {
            return Scaffold(
              bottomNavigationBar: SalomonBottomBar(
                currentIndex: _currentIndex,
                onTap: (i) => setState(() => _currentIndex = i),
                items: [
                  /// Home
                  SalomonBottomBarItem(
                    icon: Icon(Icons.home),
                    title: Text("Home"),
                    selectedColor: Color(0xffFF7A1A),
                  ),

                  /// Likes
                  SalomonBottomBarItem(
                    icon: Icon(Icons.category),
                    title: Text("Category"),
                    selectedColor: Color(0xffFF7A1A),
                  ),

                  /// Search
                  SalomonBottomBarItem(
                    icon: Icon(Icons.favorite_border),
                    title: Text(
                      "WishList",
                    ),
                    selectedColor: Color(0xffFF7A1A),
                  ),

                  /// Profile
                  SalomonBottomBarItem(
                    icon: Icon(Icons.person),
                    title: Text("Person"),
                    selectedColor: Color(0xffFF7A1A),
                  ),
                ],
              ),
              body: AppHomeCubit.get(context).screen[_currentIndex],
            );
          }),
    );
  }
}
