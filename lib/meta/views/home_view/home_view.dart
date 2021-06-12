import 'package:baseapp/core/notifiers/cache.notifiers.dart';
// import 'package:baseapp/core/notifiers/counter.notifiers.dart';
import 'package:baseapp/meta/views/login_view/login_view.dart';
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
    var _cacheNotifier = Provider.of<CacheNotifier>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("BaseApp"),
        ),
        body: Center(
          child: Container(
            child: Center(
              // child:
              //     Consumer<CounterNotifier>(builder: (context, notifier, _) {
              //   return Text(notifier.counter.toString());
              // }),
              child: MaterialButton(
                child: Text("Log Out"),
                color: Colors.blue,
                onPressed: () {
                  _cacheNotifier.deleteCache(key: "login").whenComplete(() {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginView()));
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
