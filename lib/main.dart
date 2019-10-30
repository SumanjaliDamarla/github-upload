import 'dart:async';
import 'package:sample2/book_shelf.dart';
import 'package:flutter/material.dart';

void main() => runApp(new BookReaderApp());

class BookReaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'AllyMage',
      home: new BookReaderHomePage(),
      theme: new ThemeData(primarySwatch: Colors.indigo),
    );
  }
}

class BookReaderHomePage extends StatefulWidget {
  @override
  _BookReaderHomePageState createState() => new _BookReaderHomePageState();
}

class _BookReaderHomePageState extends State<BookReaderHomePage> with SingleTickerProviderStateMixin {

  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(duration: const Duration(milliseconds: 250), vsync: this);
    animation = new Tween(begin: 1.0, end: 0.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new BookShelf();
  }
}
