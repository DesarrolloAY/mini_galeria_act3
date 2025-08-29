import 'package:flutter/material.dart';
import 'package:mini_galeria_act3/data/images_data.dart';

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
        children: _imageslist,
      ),
    );
  }

  List<Widget> get _imageslist {
    List<Widget> _listImages = [];

    for (var image in images) {
      _listImages.add(Image.network(image));
    }

    return _listImages;
  }
}
