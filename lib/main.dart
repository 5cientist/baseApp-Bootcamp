import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "baseapp demo",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  void addCounter() {
    counter++;
  }

  void minCounter() {
    counter--;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("BaseApp"),
          ),
          body: Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    // counter.toString(),
                    "$counter",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      addCounter();
                    });
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      minCounter();
                    });
                  },
                  child: Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
