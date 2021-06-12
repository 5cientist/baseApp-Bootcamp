import 'package:baseapp/core/notifiers/cache.notifiers.dart';
import 'package:baseapp/core/notifiers/counter.notifiers.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => CacheNotifier()),
  ChangeNotifierProvider(create: (_) => CounterNotifier())
];
