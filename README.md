# flutter_point_tab_bar

A tab bar widget with point indicator.

# Demo

![Demo](https://github.com/hienlh/flutter_point_tab_bar/raw/master/video1.gif)

# Usage

```dart
TabBar(
    controller: _tabController,
    indicator: PointTabIndicator(
        position: PointTabIndicatorPosition.bottom,
        color: Colors.white,
        insets: EdgeInsets.only(bottom: 6),
    ),
    tabs: tabList.map((item) {
        return Tab(
            text: item,
        );
    }).toList(),
)
```

# Example

Please run the app in the [`example/`](https://github.com/hienlh/flutter_point_tab_bar/tree/master/example) folder to start playing!
