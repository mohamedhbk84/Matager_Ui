import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matager/Shared/Cubit/States.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialStates());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 4;
  List<BottomNavigationBarItem> bottomItem = [
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "الملف الشخصى"),
    BottomNavigationBarItem(icon: Icon(Icons.note_add_rounded), label: "اضافة"),
    BottomNavigationBarItem(
        icon: Icon(Icons.event_available), label: "المناسبات"),
    BottomNavigationBarItem(
        icon: Icon(Icons.add_alert_sharp), label: "الاشعارات"),
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
  ];

  var screen = [
    // InformationProfile(),
    // AddedScreen(),
    // EventScreen(),
    // AlertsScreen(),
    // HomeScreen(),
  ];
  void changeBottomNav(int index) {
    currentIndex = index;

    emit(AppChangeBottomNavStates());
  }
}
