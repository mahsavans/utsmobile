import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//import horizontal
import 'package:ml_beauty/components/horizontal_listview.dart';
import 'package:ml_beauty/components/products.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('gambar/1.jpg'),
        AssetImage('gambar/2.jpg'),
        AssetImage('gambar/3.jpg'),
        AssetImage('gambar/4.jpg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      dotColor: Colors.red,
      indicatorBgPadding: 2.0,
    ),
  );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.pink,
        title: Text('ML-Beauty'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search,
            color: Colors.white,),
            onPressed : () {}),
          new IconButton(
            icon: Icon(
            Icons.shopping_cart,
            color: Colors.white,
            ),
            onPressed : () {}),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//          header
          new UserAccountsDrawerHeader(
            accountName: Text('Mahsa Vania Salsabila'),
            accountEmail: Text('mahsavanias@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white,),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.pink
            ),
            ),

//            body
         
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Beranda'),
              leading: Icon(Icons.home, color: Colors.deepOrange),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Akun'),
              leading: Icon(Icons.person, color: Colors.black),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Pesanan'),
              leading: Icon(Icons.shopping_basket, color: Colors.grey),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Kategori'),
              leading: Icon(Icons.dashboard, color: Colors.green),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Favorit'),
              leading: Icon(Icons.favorite, color: Colors.pink),
            ),
          ),

          Divider(),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Pengaturan'),
              leading: Icon(Icons.settings, color: Colors.brown),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Tentang'),
              leading: Icon(Icons.help, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          //image_caraousel dimulai dari sini,
          image_carousel,

          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('   Kategori'),),
       
          //Horizontal list view dimulai dari sini,
          HorizontalList(),

          //padding widget
          new Padding(padding: const EdgeInsets.all(20.0),
          child: new Text('Produk Terbaru'),),

          //gridview
          Container(
            height: 320.0,
            child: Products(),

          )
        ],
      ),
    );
  }
}