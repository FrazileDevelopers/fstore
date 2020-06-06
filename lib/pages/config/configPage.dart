import 'package:flutter/cupertino.dart';
import 'package:fstore/models/appState.dart';
import 'package:fstore/routes/routes.dart';
import 'package:provider/provider.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider<AppStateModel>(
        create: (_) => AppStateModel()..loadProducts(),
        child: CupertinoApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.initial,
          routes: Routes.routes(),
        ),
      );
}
