import 'package:flutter/material.dart';
import 'package:todo/helprs/drawer_navigator.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo"),
      ),
      drawer: DrawerNavigator(),
    );
  }
}
