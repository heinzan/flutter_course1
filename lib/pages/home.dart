import 'package:flutter/material.dart';
import '../product_manager.dart';
import 'products_admin.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(child: Column(
        children: <Widget>[
          AppBar(title: Text('Choose'),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            title: Text('Manage Products'),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (BuildContext context) => ProductsAdmin())
              );

            },
          ),
        ],
      ),),
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: ProductManager(),
    );
  }

}