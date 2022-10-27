import 'package:flutter/material.dart';
import 'package:g62_app_componentes/ui/alerts_view.dart';
import 'package:g62_app_componentes/ui/avatar_view.dart';
import 'package:g62_app_componentes/ui/cards_view.dart';
import 'package:g62_app_componentes/ui/expanded_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExpandedView(),
    );
  }
}
