import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';
import 'package:flutter_playground_kodingworks/shared/assets.dart' as AppAsset;
import 'package:flutter_playground_kodingworks/shared/colors.dart' as AppColor;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tumbasin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() async {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InputSearch(),
            HeaderCard(),
            MiniHeaderCard(),
            CategoryButton(text: 'Sayuran', image: 'https://picsum.photos/250?image=9',),
            ItemTile()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: AppColor.secondary,
        tooltip: 'Increment',
        child: AppAsset.trolley,
      ),
      bottomNavigationBar: TabBottomCard(),
    );
  }
}
