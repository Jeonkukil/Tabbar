import 'package:flutter/material.dart';
import 'package:tabbar_theory/screen/basic_appbar_tabbar_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeScreen'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => BasicAppbarTabbarScreen(),),
                  );
                },
                child: Text('Basic AppBar TabBar Screen'),
              ),
            ],
          ),
        ));
  }
}
