import 'package:flutter/material.dart';

/// Flutter code sample for [TabBar].

//내가 만든 인스타 화면
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
      endDrawer: _menu(),
      appBar: _appbar(),
      body: Column(
        children: [
          _header(),
          _middle(),
          Expanded(child: _bottom()),
        ],
      ),
    );
  }

  Row _middle() {
    return Row(
      children: [
        Column(
          children: [
            Text("A"),
            Text("B"),
          ],
        ),
        Container(
          width: 1,
          height: 100,
          color: Colors.black,
        ),
      ],
    );
  }

  Container _menu() {
    return Container(
      width: 200,
      color: Colors.red,
    );
  }

  AppBar _appbar() {
    return AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        title: Text("Profile"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios));
  }

  DefaultTabController _bottom() {
    return DefaultTabController(
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
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5),
                  itemBuilder: (context, index) => Image.network(
                      "https://picsum.photos/id/${200 + index}/200/300",
                      fit: BoxFit.cover),
                  itemCount: 30,
                ),
                Container(
                  color: Colors.red,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 80,
          height: 80,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://flexible.img.hani.co.kr/flexible/normal/960/960/imgdb/resize/2019/0121/00501111_20190121.JPG"),
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("A"),
            Text("B"),
            Text("C"),
          ],
        ),
      ],
    );
  }
}
