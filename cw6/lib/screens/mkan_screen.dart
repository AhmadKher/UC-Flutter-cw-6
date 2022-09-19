import 'package:flutter/material.dart';

// import 'package:flutter_application_menu/models/food.dart';

import '../models/mkan.dart';

class mkan_screen extends StatelessWidget {
  const mkan_screen({Key? key, required this.building}) : super(key: key);

  final Building building;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(building.name),
      ),
      body: Center(
        child: Image.network(building.imgUrl),
      ),
    );
  }
}
