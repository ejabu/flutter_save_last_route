import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  void initState() {
    super.initState();
    navigateToLastPage();
  }

  void navigateToLastPage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String lastRoute = prefs.getString('last_route');
    if (lastRoute.isNotEmpty && lastRoute != '/') {
      Navigator.of(context).pushNamed(lastRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Base Screen"),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("Alpha"),
                onTap: () {
                  Navigator.of(context).pushNamed('/alpha');
                },
              ),
              ListTile(
                title: Text("Beta"),
                onTap: () {
                  Navigator.of(context).pushNamed('/beta');
                },
              ),
              ListTile(
                title: Text("Delta"),
                onTap: () {
                  Navigator.of(context).pushNamed('/delta');
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text("Base Screen"),
      ),
    );
  }
}
