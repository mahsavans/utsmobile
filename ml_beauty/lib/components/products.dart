import 'package:flutter/material.dart';
import 'package:ml_beauty/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Liptint",
      "picture": "gambar/produk/lipstick1.jpg",
      "old_price": 120000,
      "price": 85000,
    },
        {
      "name": "Bedak",
      "picture": "gambar/produk/bedak1.jpg",
      "old_price": 100000,
      "price": 50000,
    },
        {
      "name": "BlushOn",
      "picture": "gambar/produk/blushon1.jpg",
      "old_price": 30000,
      "price": 23000,
    },
        {
      "name": "Foundt",
      "picture": "gambar/produk/foundation1.jpg",
      "old_price": 111000,
      "price": 75000,
    },
        {
      "name": "Eyeshad",
      "picture": "gambar/produk/eyeshadow1.jpg",
      "old_price": 58000,
      "price": 30000,
    },
        {
      "name": "Eyeline",
      "picture": "gambar/produk/eyeliner1.jpeg",
      "old_price": 69000,
      "price": 55000,
    },
      {
      "name": "Lipcr",
      "picture": "gambar/produk/lipstick2.jpg",
      "old_price": 11000,
      "price": 89000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
      child: Material(
        child: InkWell(
          onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => new ProductDetails(
                product_detail_name: prod_name,
                product_detail_new_price: prod_price,
                product_detail_old_price: prod_old_price,
                product_detail_picture: prod_picture,
              ))),
        child: GridTile(
          footer: Container(
            color: Colors.white70,
            child: ListTile(
              leading: Text(
                prod_name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              title: Text(
                "\Rp.$prod_price", 
              style:TextStyle(
                color: Colors.red, 
                fontWeight: FontWeight.w800),
              ),
              subtitle: Text(
                "\Rp.$prod_old_price",
                style:TextStyle(
                color: Colors.black54, 
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.lineThrough),
              ),
              ),
            ),
             child: Image.asset(
               prod_picture,
          fit: BoxFit.cover,
          ),)
          ),
          )),
          );
  }
}