
import 'package:flutter/cupertino.dart';
import 'fee_screen.dart';
import 'home_page.dart';

Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  HomeScreen.routeName: (context) => HomeScreen(),
  FeeScreen.routeName: (context) => FeeScreen(),
 // AssignmentScreen.routeName: (context) => AssignmentScreen(),
//  DateSheetScreen.routeName: (context) => DateSheetScreen(),
};