import 'package:baseapp/app/providers/providers.dart';
// import 'package:baseapp/core/notifiers/counter.notifiers.dart';
// import 'package:baseapp/meta/views/home_view/home_view.dart';
import 'package:baseapp/meta/views/splash_view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        child: MaterialApp(
          title: "baseapp demo",
          theme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          home: SplashView(),
        ),
        providers: providers);
  }
}
