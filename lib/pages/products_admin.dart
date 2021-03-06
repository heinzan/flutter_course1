import 'package:flutter/material.dart';
import 'home.dart';

class ProductsAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('All Products'),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomePage()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Manage Products'),
      ),
      body: Center(
        child: Text('Manage your product'),
      ),
    );
  }
}
