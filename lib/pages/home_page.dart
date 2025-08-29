import 'package:flutter/material.dart';
import 'package:mini_galeria_act3/data/images_data.dart';
import 'package:mini_galeria_act3/pages/image_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nuestra Galeria',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150.0, //cuanto maximo mide un elemento en pantalla
        padding: const EdgeInsets.all(5.0),
        mainAxisSpacing: 5.0, //separacion entre elemento
        crossAxisSpacing: 5.0,
        children: _imageslist,
      ),
    );
  }

  List<Widget> get _imageslist {
    List<Widget> _listImages = [];

    for (var image in images) {
      _listImages.add(
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ImagePage(url: image)),
            );
          },
          child: Image.network(image, fit: BoxFit.cover),
        ),
      );
    }

    return _listImages;
  }
}
