import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String title;
  final String imageUrl;

  Product(this.title , this.imageUrl);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(child: Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(imageUrl),
          Container(
            padding: EdgeInsets.all(10.0),
            child:Text(title),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text('Delete'),
              color: Theme.of(context).accentColor,
              onPressed: () => Navigator.pop(context , true),

            ) ,
          ),

        ],
      ),
      /*Center(
        child: Text('On the Product Page'),
      ),*/
    ), onWillPop: (){
      Navigator.pop( context ,  false);
      return Future.value(false);
    });
  }
}
