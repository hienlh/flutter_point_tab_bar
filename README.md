# flutter_point_tab_bar

A tab bar widget with point indicator.

# Demo

![Demo](https://github.com/hienlh/flutter_point_tab_bar/raw/master/video1.gif)

# Usage

```dart
PointTabBar(
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
)
```

# Example

Please run the app in the [`example/`](https://github.com/hienlh/flutter_point_tab_bar/tree/master/example) folder to start playing!
