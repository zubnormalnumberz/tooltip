import 'package:flutter/material.dart';
import 'package:tooltip/screens/ejemplo1.dart';
import 'package:tooltip/screens/ejemplo2.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Ejemplo 1"),
                Tab(text: "Ejemplo 2"),
              ],
            ),
            title: Text('Tooltip Demo'),
          ),
          body: TabBarView(
            children: [
              Ejemplo1Tab(),
              Ejemplo2Tab(),
            ],
          ),
        ),
      ),
    );
  }
}
