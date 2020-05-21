import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(
        child: FlatButton(
          color: Colors.blue,
          textColor: Colors.white,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          padding: EdgeInsets.all(8.0),
          splashColor: Colors.blueAccent,
          onPressed: () async {
            Response response;
            Dio dio = new Dio();
            response = await dio.get("https://www.greenmountaingrills.com/wp-content/plugins/GMGRecipePlugin/recipes.json");
            print(response.data.toString());
          },
          child: Text(
            "Flat Button",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}