import 'package:app4pm/pages/Nim.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400] ,
        title: Text('Nama'),
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
        Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Nim()),
        );
      },
        child: const Text('Nim'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        // : <Widget>[
        //   Text("Nama : M.Qodratul Qudus"),
        //   FloatingActionButton(
        //     onPressed: ()
        //     {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => const Nim()),
        //       );
        //       MainAxisAlignment.center;
        //     }
        //   ),
        // ],
        // child : FloatingActionButton(
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => const Nim()),
        //       );
        //     }
        // ),
    );
  }
}
