import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground_kodingworks/models/slide.dart';
import 'package:flutter_playground_kodingworks/modules/banner/banner.dart';
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';

class BannerWidget extends StatefulWidget {
  @override
  _BannerWidgetState createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<BannerBloc>(context).add(BannerSelectEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerBloc, BannerState>(
      builder: (BuildContext context, BannerState state) {
        if(state is BannerLoading) {
          return CarouselShimmer();
        } else if(state is BannerLoaded) {

          List<NetworkImage> _items = [];
          state.banner.map((Slide item) => _items.add(NetworkImage(item.image.source))).toList();

          return CarouselContainer(_items);
        } else {
          return CarouselShimmer();
        }
      }
    );
  }
}