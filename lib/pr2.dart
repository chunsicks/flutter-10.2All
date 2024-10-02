import 'package:flutter/material.dart';

/// Flutter code sample for [TabBar].

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Container(
        width: 200,
        color: Colors.red,
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blue
        ),
        title: Text("title"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios)
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            color: Colors.blue,
          ),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.add)),
                      Tab(icon: Icon(Icons.add)),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Center(child: Text("Screen 1")),
                        Center(child: Text("Screen 2")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}