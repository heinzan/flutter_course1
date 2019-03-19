import 'package:flutter/material.dart';
import 'package:flutter_course/products.dart';
import 'product_control.dart';

class ProductManager extends StatefulWidget {
  final Map<String , dynamic> startingProduct;

  ProductManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String , dynamic>> _products = [];

  @override
  void initState() {
    super.initState();
    if(widget.startingProduct != null){
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  void _addProducts(Map<String , dynamic> product) {
    setState(() {
      _products.add(product);
    });
  }


  void _deleteProduct(int index){
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProducts),
        ),
        Expanded(
          child: Products(_products , deleteProduct: _deleteProduct,),
        )
      ],
    );
  }
}
