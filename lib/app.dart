import 'package:exam_week_assignment_3/UI/Screens/add_new_product_screen.dart';
import 'package:exam_week_assignment_3/UI/Screens/product_list_screen.dart';
import 'package:exam_week_assignment_3/UI/Screens/update_product_screen.dart';
import 'package:flutter/material.dart';

class CRUDApp extends StatelessWidget {
  const CRUDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const ProductListScreen(),
          AddNewProductScreen.name: (context) => AddNewProductScreen(),
          UpdateProductScreen.name: (context) => UpdateProductScreen(),
        });
  }
}
