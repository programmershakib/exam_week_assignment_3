import 'package:exam_week_assignment_3/Models/product.dart';
import 'package:exam_week_assignment_3/UI/Screens/update_product_screen.dart';
import 'package:flutter/material.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //leading: Image.network(product.image ?? ''),
      title: Text(product.productName ?? ''),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
        Text('Product Code: ${product.productCode ?? ''}'),
        Text('Quantity: ${product.quantity ?? ''}'),
        Text('Price: ${product.unitPrice ?? ''}'),
        Text('Total Price: ${product.totalPrice ?? ''}'),
      ]),
      trailing: Wrap(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, UpdateProductScreen.name);
            },
            icon: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
