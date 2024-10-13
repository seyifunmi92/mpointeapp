import 'package:flutter/material.dart';
import 'package:mpointe/feature/view1/presentation/pages/page1.dart';
import 'package:mpointe/feature/view2/presentation/pages/page2.dart';
import 'package:mpointe/feature/view1/presentation/widgets/widgetargs/bottomnavitems.dart';

List<BottomNavItems> bottomNavItems = [
  BottomNavItems(
    icon: Icons.search,
    index: 0,
  ),
  BottomNavItems(
    icon: Icons.chat_bubble_rounded,
    index: 1,
    navigator: const Page2(),
  ),
  BottomNavItems(
    icon: Icons.home_filled,
    index: 2,
    navigator: const Page1(),
  ),
  BottomNavItems(
    icon: Icons.signal_cellular_alt,
    index: 3,
  ),
  BottomNavItems(
    icon: Icons.account_circle,
    index: 4,
  ),
];
