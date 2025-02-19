import 'package:flutter/material.dart';

class NimPage extends StatelessWidget {
  const NimPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff1F1B24) ,
        title: Text(
          'Nim',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            ),
          ),
        centerTitle: true,
        ),
      body: Center(
      child : Column(
        children: <Widget>[
          Text(
            "Nim : 12350112928",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 5,
              fontSize: 30,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(onPressed: () {
      Navigator.pop(context);
      },
        child: Icon(Icons.arrow_upward),
        backgroundColor: Color(0xffBB86FC),
      ),
    );
  }
}