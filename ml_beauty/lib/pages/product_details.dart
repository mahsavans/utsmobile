import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture
    });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.pink,
        title: Text('ML-Beauty'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
            color: Colors.white,
            ),
            onPressed : () {}),
          new IconButton(
            icon: Icon(
            Icons.shopping_cart,
            color: Colors.white,
            ),
            onPressed : () {}),
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
                ),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(widget.product_detail_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("\Rp.${widget.product_detail_old_price}",
                          style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
                          ),

                        Expanded(
                          child: new Text("\Rp.${widget.product_detail_new_price}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),)
                          ),
                      ]
                    )
                    ),
                ),),
            ),



            Row(
              children: <Widget>[

                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Pilih ukuran"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("tutup"),)
                            ],
                            );
                      });
                    },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                    Expanded(child: new Text("Size")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                  ),
                  ),
                  ),


              
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Color"),
                            content: new Text("Pilih warna"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("tutup"),)
                            ],
                            );
                      });
                    },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                    Expanded(child: new Text("Color")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                  ),
                  ),
                  ),


                Expanded(
                  child: MaterialButton(
                     onPressed: () {
                      showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Quantity"),
                            content: new Text("Pilih jumlah"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("tutup"),)
                            ],
                            );
                      });
                    },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                    Expanded(child: new Text("Qty")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                  ),
                  ),
                  ),
            ],
            ),



              Row(
              children: <Widget>[

                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Beli sekarang")
                  ),
                  ),

                  new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,), onPressed: () {}),

                  new IconButton(icon: Icon(Icons.favorite_border),color: Colors.red, onPressed: () {}),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Detail Produk"),
            subtitle: new Text("Ini nantinya akan diisi dengan detail produk dari setiap produk yang ada, detail produk akan menunjukkan deskripsi dari masing-masing produk."),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Nama Produk", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_name),)
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Merek Produk", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text("Merek"),)
            ],
          ),

            new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Kondisi Produk", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text("BARU"),)
            ],
          ),
        ],
      ),
    );
  }
}