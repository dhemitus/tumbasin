import 'package:flutter/material.dart';
import 'package:flutter_playground_kodingworks/shared/assets.dart' as AppAsset;

class TabIcon {
  final String text;
  final Widget icon;

  TabIcon(this.text, this.icon);
}

List<TabIcon> tabData = [
  TabIcon('Belanja', AppAsset.home),
  TabIcon('Transaksi', AppAsset.transaction),
  TabIcon('Bantuan', AppAsset.help),
  TabIcon('Profile', AppAsset.user),
];