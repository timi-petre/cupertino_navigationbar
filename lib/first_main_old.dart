import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
        child: Center(
          child: CupertinoButton.filled(
            child: Text(
              'Next',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => MainPage(),
              ),
            ),
          ),
        ),
      );
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          previousPageTitle: 'Explore',
          middle: Text('Add Image'),
          trailing: CupertinoButton(
            child: Text('Done'),
            padding: EdgeInsets.zero,
            onPressed: () => Navigator.pop(context),
          ),
        ),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      );
}
