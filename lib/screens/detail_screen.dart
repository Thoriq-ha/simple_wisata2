import 'package:flutter/material.dart';
import 'package:simple_wisata/models/wisata.dart';

class DetailScreen extends StatelessWidget {
  final Wisata wisata;

  const DetailScreen({Key? key, required this.wisata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(wisata.name),
      ),
      body: Column(
        children: [
          Image.asset(wisata.image),
          SizedBox(
            height: 16,
          ),
          Text(
            wisata.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text('HTM: ${wisata.htm}'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              wisata.description,
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
