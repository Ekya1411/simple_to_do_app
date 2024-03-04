import 'package:flutter/material.dart';

class add_list extends StatelessWidget {
  const add_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add List', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
      ),
      extendBody: true,
      body: ListView(
        children: [
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text('Title : ', style: TextStyle(fontSize: 20)),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: 300,
                  height: 30,
                  child: TextField(
                  ),
                )
              ],
            )
          ),

          Container(
            padding: EdgeInsets.only(left: 10, top: 20),
            child: const Row(
              children: [
                Text('Description : ', style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          
          const SizedBox(height: 20,),
          
          Center(
            child: 
              Container(
                height: 300,
                width: 350,
                padding: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  border: 
                    Border.all(),
                    borderRadius: BorderRadius.circular(20),
                ),
                child: 
                  const SingleChildScrollView(
                    child: 
                    TextField(
                      maxLines: null,
                      textAlign: TextAlign.justify,
                      decoration: InputDecoration(
                        border: InputBorder.none
                      ),
                    )
                ),
              ),
          ),

          SizedBox(height: 50),

          Center(
            child: 
              Container(
                height: 35,
                width: 150,
                child: const Center(
                  child: Text('Save', style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: 
                    Border.all(),
                    borderRadius: BorderRadius.circular(20),
                ),
              )
              
          )
        ]
      ),
    );
  }
}