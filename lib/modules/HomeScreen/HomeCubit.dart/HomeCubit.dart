import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matager/modules/HomeScreen/BottomScreen/CategoryScreen.dart';
import 'package:matager/modules/HomeScreen/BottomScreen/HomeScreen.dart';
import 'package:matager/modules/HomeScreen/BottomScreen/PersonScreen.dart';
import 'package:matager/modules/HomeScreen/BottomScreen/WishListScreen.dart';
import 'package:matager/modules/HomeScreen/HomeCubit.dart/HomeStates.dart';

class AppHomeCubit extends Cubit<AppHomeStates> {
  AppHomeCubit() : super(AppHomeInitialStates());

  static AppHomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 3;
  List<BottomNavigationBarItem> bottomItem = [
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Home"),
    BottomNavigationBarItem(
        icon: Icon(Icons.note_add_rounded), label: "Category"),
    BottomNavigationBarItem(
        icon: Icon(Icons.event_available), label: "WishList"),
    BottomNavigationBarItem(icon: Icon(Icons.add_alert_sharp), label: "Person"),
  ];

  var screen = [
    HomeScreen(),
    CategoryScreen(),
    WishListScreen(),
    PersonScreen(),
  ];
  void changeBottomNav(int index) {
    currentIndex = index;

    emit(AppHomeChangeBottomNavStates());
  }
}
