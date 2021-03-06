import 'package:flutter/material.dart';
import './pages/product.dart';

class Products extends StatelessWidget {
  List<Map<String, dynamic>> products;
  final Function deleteProduct;

  Products(this.products , {this.deleteProduct  });

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => (Product(
                            products[index]['title'],
                            products[index]['image'])),
                      ),
                    ).then((bool value){

                      print(value);
                      if(value){
                        deleteProduct(index);
                      }

                    });
                  },
                  child: Text('Details'))
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCard = Center(
        child: Text('No products found,Please add some'),
      );
    }

    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildProductList();
  }
}
