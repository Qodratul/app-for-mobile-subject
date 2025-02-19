import 'package:app4pm/pages/Nim.dart';
import 'package:flutter/material.dart';

class NamePage extends StatelessWidget {
  const NamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1F1B24) ,
        title: Text(
          'Nama',
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
              "Nama : M.Qodratul Qudus",
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
        Navigator.of(context).push(_createRoute());
      },
        backgroundColor: Color(0xffBB86FC),
        child: Icon(Icons.arrow_downward),
        ),
      );
    }
  }

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => NimPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}

