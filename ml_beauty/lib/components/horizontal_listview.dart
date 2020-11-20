import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'gambar/kategori/lipstick.png',
            image_caption: 'Lipstick',
          ),

          Category(
            image_location: 'gambar/kategori/bedak.png',
            image_caption: 'Bedak',
          ),

          Category(
            image_location: 'gambar/kategori/eyeshadow.png',
            image_caption: 'Eyeshadow',
          ),

          Category(
            image_location: 'gambar/kategori/foundation.png',
            image_caption: 'Foundation',
          ),

          Category(
            image_location: 'gambar/kategori/blushon.png',
            image_caption: 'Blush On',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget{
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: null,
    child: Container(
      width: 100.0,
          child: ListTile(
        title: Image.asset(image_location, 
        width: 100.0,
        height: 80.0,),
        subtitle: Container(
          alignment: Alignment.topCenter,
          child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
        )
      ),
    ),
    ),
    );
  }
}