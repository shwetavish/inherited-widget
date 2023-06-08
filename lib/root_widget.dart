import 'package:demo/my_home_page.dart';
import 'package:demo/my_inherited_widget.dart';
import 'package:flutter/material.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({super.key});

  @override
  State<RootWidget> createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int count = 0;

  void addCounter() {
      setState(() {
        count++;
      });
  }

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      count: count,
      addCount: addCounter,
      child: const MyHomePage(),
    );
  }
}
