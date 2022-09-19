import 'package:flutter/material.dart';

import '../models/mkan.dart';
import 'mkan_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var buildings = [
    Building(
      name: 'أبراج الكويت',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
    ),
    Building(
      name: 'برج التحرير',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
    ),
    Building(
      name: 'المسجد الكبير',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kuwait City'),
      ),
      body: ListView.builder(
        itemCount: buildings.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => mkan_screen(
                      building: buildings[index],
                    ),
                  ),
                );
              },
              child: Row(
                children: [
                  Image.network(
                    buildings[index].imgUrl,
                    width: 170,
                    height: 170,
                  ),
                  Container(
                    padding: EdgeInsets.all(50),
                    child: Text(
                      buildings[index].name,
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
