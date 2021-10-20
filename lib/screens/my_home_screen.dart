import 'package:flutter/material.dart';
import 'package:simple_wisata/models/wisata.dart';
import 'package:simple_wisata/screens/detail_screen.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Kuy'),
      ),
      body: ListView.builder(
          itemCount: dataWisata.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailScreen(wisata: dataWisata[index],)));
              },
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                          height: 120,
                          child: Image.asset(dataWisata[index].image)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(dataWisata[index].name),
                        Text('HTM : ${dataWisata[index].htm}')
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
