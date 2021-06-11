import 'package:baseapp/core/notifiers/counter.notifiers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var _counterNotifier = Provider.of<CounterNotifier>(context, listen: false);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("BaseApp"),
          ),
          body: Center(
            child: Container(
              child: Center(
                child:
                    Consumer<CounterNotifier>(builder: (context, notifier, _) {
                  return Text(notifier.counter.toString());
                }),
              ),
            ),
          ),
          floatingActionButton: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    _counterNotifier.increment();
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
                    _counterNotifier.decrement();
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
