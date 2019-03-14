import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget{
  final Function addProduct;
  ProductControl(this.addProduct);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      textColor: Colors.greenAccent,
      child: Text('Add Product'),
      color: Colors.blueAccent,
      onPressed: () {
        addProduct({'title': 'Chocolate' , 'image':'assets/food.jpg'});
      },
    );
  }

}