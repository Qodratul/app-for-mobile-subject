import 'package:flutter/material.dart';

class page extends StatefulWidget {
  @override
  imageChanger createState() => imageChanger();
}

class imageChanger extends State<page> {
  int imageIndex = 0; // To track current image

  final List<Map<String, String>> images = [
  {'image': 'assets/image/cat.webp', 'desc': 'Cat'},
  {'image': 'assets/image/dog.webp', 'desc': 'Dog'},
  {'image': 'assets/image/bunny.webp', 'desc': 'Bunny'},
  {'image': 'assets/image/fish.webp', 'desc': 'Fish'},
  {'image': 'assets/image/bird.webp', 'desc': 'Bird'},
  ];


  void nextImage() {
    setState(() {
      imageIndex = (imageIndex + 1) % images.length;
    });
  }

  void backImage() {
    setState(() {
      imageIndex = (imageIndex - 1) % images.length;
    });
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xffB5A8D5),
        body: Stack(
            children: [
              Center(
                child: Card(
                color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Image.asset(images[imageIndex]['image']!,
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 230,
                left: 75,
                child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
                child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                images[imageIndex]['desc']!,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Positioned(
              bottom: 20,
              left: 20,
              child: ElevatedButton(
              onPressed: backImage,
              child: Icon(Icons.arrow_circle_left),
                ),
              ),

              // Bottom Right Button
              Positioned(
              bottom: 20,
              right: 20,
              child: ElevatedButton(
              onPressed: nextImage,
              child: Icon(Icons.arrow_circle_right),
                ),
              ),
            ],
        ),
      );
    }
  }
