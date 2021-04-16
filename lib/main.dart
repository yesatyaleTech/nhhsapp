import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:nhhsapp/signup_page.dart';
=======
import 'package:nhhsapp/views/dad_page.dart';
import 'package:nhhsapp/views/mom_page.dart';
>>>>>>> 29a72ece1923c1a451c1b085abe5503e9592f634

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
<<<<<<< HEAD
      home: SignupPage(),
=======
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int curr = 0;

  void changePage(int index) {
    setState(() {
      curr = index;
    });
  }
  var labels = [
    "For Mom",
    "For Dad"
  ];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curr,
        onTap: (dex) => changePage(dex),
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.baby_changing_station),
            label: "For Mom",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "For Dad",
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/logo.jpg"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(labels[curr],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: curr,
                children: [
                  MomPage(),
                  DadPage(),
                ],
              ),
            ),
          ],
        ),
      ),
>>>>>>> 29a72ece1923c1a451c1b085abe5503e9592f634
    );
  }
}
