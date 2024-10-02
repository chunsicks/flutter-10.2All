import 'package:flutter/material.dart';
//로그인페이지
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/login": (BuildContext context) => LoginPage(),
        "/home": (BuildContext context) => HomePage()
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 500,
            color: Colors.yellow,
          ),
          TextFormField(
            controller: username,
            decoration: InputDecoration(
              hintText: "Username",
              prefixIcon: Icon(Icons.person),
            ),
          ),
          TextFormField(
            controller: password,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Password",
              prefixIcon: Icon(Icons.password),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                //1. 값 가지고 오기
                String un = username.text;
                String pw = password.text;
                print(un);
                print(pw);
                //2. 통신하기

                //3. 화면이동
                Navigator.pushNamed(context, "/home");
              },
              child: Text("로그인")),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          // Navigator.pushNamed(context, "/login");
          // Navigator.pushReplacementNamed(context, "/login");
          // Navigator.pushNamedAndRemoveUntil(context, "/login",(route) => true);
          Navigator.pop(context);
        },
        child: Text("뒤로가기"),
      )),
    );
  }
}
