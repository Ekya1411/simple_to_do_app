import 'package:flutter/material.dart';

class IconUtil {
  static IconData getIconData(int index) {
    return index % 2 == 0 ? Icons.check_circle : Icons.circle;
  }
}

class theListActivity extends StatelessWidget {
  final String array;
  final int index;

  const theListActivity({required this.array, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(array),
      subtitle: Text("Only blababla"),
      leading: Icon(IconUtil.getIconData(index)),
      tileColor: Colors.white,
    );
  }
}