import 'package:flutter/material.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});

  static const String name = '/update-product';

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _priceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                  controller: _nameTEController,
                  decoration: const InputDecoration(
                    hintText: 'Name',
                    labelText: 'Product name',
                  ),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Enter product name';
                    }
                    return null;
                  }),
              TextFormField(
                  controller: _priceTEController,
                  decoration: const InputDecoration(
                    hintText: 'Price',
                    labelText: 'Product price',
                  ),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Enter product price';
                    }
                    return null;
                  }),
              TextFormField(
                  controller: _totalPriceTEController,
                  decoration: const InputDecoration(
                    hintText: 'Total price',
                    labelText: 'Product Total Price',
                  ),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Enter product total price';
                    }
                    return null;
                  }),
              TextFormField(
                  controller: _quantityTEController,
                  decoration: const InputDecoration(
                    hintText: 'Quantity',
                    labelText: 'Product quantity',
                  ),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Enter product quantity';
                    }
                    return null;
                  }),
              TextFormField(
                  controller: _codeTEController,
                  decoration: const InputDecoration(
                    hintText: 'Code',
                    labelText: 'Product code',
                  ),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Enter product code';
                    }
                    return null;
                  }),
              TextFormField(
                  controller: _imageTEController,
                  decoration: const InputDecoration(
                    hintText: 'Image url',
                    labelText: 'Product image',
                  ),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Enter product image url';
                    }
                    return null;
                  }),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: () {}, child: const Text('Update Product'))
            ],
          ),
        ),
      ),
      ),
    );
  }
}
