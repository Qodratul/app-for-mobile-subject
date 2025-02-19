import 'package:flutter/material.dart';

class Nim extends StatelessWidget {
  const Nim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400] ,
        title: Text('Nim'),
        centerTitle: true,
      ),
      body: Center(
      child : Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("Nim : 12350112928"),
        ],

      ),

      ),
        floatingActionButton: FloatingActionButton(onPressed: ()
      {
      Navigator.pop(context);
      },
      child: const Text('Nama'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}