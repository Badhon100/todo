import 'package:flutter/material.dart';
import 'package:todo/models/category.dart';
import 'package:todo/screens/home_scrren.dart';
import 'package:todo/services/category_service.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  var _categoryNameController = TextEditingController();
  var _categoryDescriptionController = TextEditingController();

  var _category = Category();
  var _categoryService = CategoryService();

  _showFormDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return AlertDialog(
            actions: [
              FlatButton(
                child: Text("Cancel"),
                color: Colors.red,
                onPressed: () => Navigator.pop(context),
              ),
              FlatButton(
                child: Text("Save"),
                color: Colors.blue,
                onPressed: () async{
                  _category.name = _categoryNameController.text;
                  _category.description = _categoryDescriptionController.text;
                  var result = await _categoryService.saveCategory(_category);
                  print(result);

                },
              ),
            ],
            title: Text("Categories Form"),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: _categoryNameController,
                    decoration: InputDecoration(
                      hintText: "Write a category",
                      labelText: "Category",
                    ),
                  ),
                  TextField(
                    controller: _categoryDescriptionController,
                    decoration: InputDecoration(
                      hintText: "Write a Description",
                      labelText: "Description",
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: RaisedButton(
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          color: Colors.blue,
          elevation: 0,
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeScreen())),
        ),
        title: Text("Categories"),
      ),
      body: Center(
        child: Text("hello there!"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showFormDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
