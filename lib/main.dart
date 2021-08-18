import 'package:cupertino_navigationbar/page/add_image_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      theme: CupertinoThemeData(
        barBackgroundColor: CupertinoDynamicColor.withBrightness(
          color: CupertinoColors.white,
          darkColor: CupertinoColors.black,
        ),
        primaryColor: CupertinoDynamicColor.withBrightness(
            color: CupertinoColors.systemRed,
            darkColor: CupertinoColors.systemGreen),
        brightness: Brightness.light,
      ),
    ),
  );
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            CupertinoSliverNavigationBar(
              largeTitle: Text('Explore'),
              padding: EdgeInsetsDirectional.zero,
              leading: CupertinoButton(
                padding: EdgeInsets.zero,
                child: Icon(
                  CupertinoIcons.add,
                  size: 28,
                ),
                onPressed: () => Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => AddImagePage(),
                  ),
                ),
              ),
              trailing: CupertinoButton(
                child: Icon(CupertinoIcons.search),
                padding: EdgeInsets.zero,
                onPressed: () {},
              ),
            ),
          ],
          body: Container(),
        ),
      );
}
