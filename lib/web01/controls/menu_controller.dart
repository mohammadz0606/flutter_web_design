import 'package:flutter/material.dart';

class MenuControllerProvider extends ChangeNotifier {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  void controlMenu(){
    if(!globalKey.currentState!.isDrawerOpen){
      globalKey.currentState!.openDrawer();
      notifyListeners();
    }
  }
}
