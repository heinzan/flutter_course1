import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  List<String> products;

  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index]),
        ],
      ),
    );
  }

  Widget _buildProductList(){
    Widget productCard ;
    if(products.length >0){
      productCard  = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }else{
      productCard = 
      Center(
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

