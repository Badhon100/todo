import 'package:flutter/material.dart';
import 'package:todo/screens/categories_screen.dart';
import 'package:todo/screens/home_scrren.dart';

class DrawerNavigator extends StatefulWidget {
  @override
  _DrawerNavigatorState createState() => _DrawerNavigatorState();
}

class _DrawerNavigatorState extends State<DrawerNavigator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://scontent.fdac74-1.fna.fbcdn.net/v/t1.0-9/151623467_3712064405542097_3096421005493726898_o.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=_3IKisO8tHEAX9MZxYd&_nc_ht=scontent.fdac74-1.fna&oh=68ac79e92c08eb88510040732fcd3831&oe=607705B0")),
              accountName: Text(
                "Nahiduzzaman Badhon",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomeScreen())),
            ),
            ListTile(
              leading: Icon(Icons.menu),
              title: Text("Categories"),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CategoriesScreen())),
            ),
          ],
        ),
      ),
    );
  }
}
