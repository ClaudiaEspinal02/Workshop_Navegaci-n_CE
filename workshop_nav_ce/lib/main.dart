import 'package:flutter/material.dart';
import 'TabsScreen.dart';
import 'PushPopScreen.dart';
import 'ParentToChildScreen.dart';
import 'ChildToParentScreen.dart';
import 'DrawerMenuScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: {
        '/tabs': (context) => TabsScreen(),
        '/pushPop': (context) => PushPopScreen(),
        '/parentToChild': (context) => ParentToChildScreen(),
        '/childToParent': (context) => ChildToParentScreen(),
        '/drawerMenu': (context) => DrawerMenuScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Navigation Example'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Navigation mediante Tabs'),
            onTap: () => Navigator.pushNamed(context, '/tabs'),
          ),
          ListTile(
            title: Text('Navigation push and pop'),
            onTap: () => Navigator.pushNamed(context, '/pushPop'),
          ),
          ListTile(
            title: Text('Envio de datos del padre al hijo'),
            onTap: () => Navigator.pushNamed(context, '/parentToChild'),
          ),
          ListTile(
            title: Text('Envio de datos del hijo al padre'),
            onTap: () => Navigator.pushNamed(context, '/childToParent'),
          ),
          ListTile(
            title: Text('Menú tipo Drawer'),
            onTap: () => Navigator.pushNamed(context, '/drawerMenu'),
          ),
        ],
      ),
    );
  }
}
