import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground_kodingworks/modules/banner/banner.dart';
import 'package:flutter_playground_kodingworks/modules/categories/categories.dart';
import 'package:flutter_playground_kodingworks/modules/products/products.dart';
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
      home: MultiBlocProvider(
        providers: [
          BlocProvider<BannerBloc>(
            create: (context) => BannerBloc(BannerRepository()),
          ),
          BlocProvider<CategoriesBloc>(
            create: (context) => CategoriesBloc(CategoriesRepository()),
          ),
          BlocProvider<ProductsBloc>(
            create: (context) => ProductsBloc(ProductsRepository()),
          )
        ],
       child: MyHomePage(), 
      )

//      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            InputSearch(),
//            HeaderCard(),
//            MiniHeaderCard(),
            CategoriesWidget(),
            BannerWidget(),
            ItemTile()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: AppColor.secondary,
        tooltip: 'Keranjang',
        child: AppAsset.trolley,
      ),
      bottomNavigationBar: TabBottomCard(),
    );
  }
}
