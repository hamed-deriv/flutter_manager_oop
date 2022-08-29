import 'package:flutter/material.dart';

import 'package:flutter_manager_oop/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Manager OOP',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const HomePage(),
      );
}
