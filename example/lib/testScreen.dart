import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabBar.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen>
    with SingleTickerProviderStateMixin {
  final tabList = ['Tab 1', 'Tab 2'];
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tabList.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Point Tab Bar'),
        centerTitle: true,
        bottom: PointTabBar(
          controller: _tabController,
          indicator: PointTabIndicator(
            color: Colors.white,
            insets: EdgeInsets.only(bottom: 4),
          ),
          tabs: tabList.map((item) {
            return PointTab(
              text: item,
            );
          }).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabList.map((item) {
          return Center(child: Text(item));
        }).toList(),
      ),
    );
  }
}
