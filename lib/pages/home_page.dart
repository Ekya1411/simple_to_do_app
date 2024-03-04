import 'package:flutter/material.dart';
import 'package:simple_to_do_app/widget.dart';

class home_page extends StatelessWidget {
  home_page({super.key});
  
  final List _dataListActivity = [
    "Activity 1", 
    "Activity 2", 
    "Activity 3",
    "Activity 4"
    ];

  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do List'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return theListActivity(
              array : _dataListActivity[index],
              index: i++, 
            );
        },
        itemCount: _dataListActivity.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add_list');
        },
        child: 
          Icon(Icons.add, color: Colors.white,),
          backgroundColor: Colors.red,
      ),
    );
  }
}