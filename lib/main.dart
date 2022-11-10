import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
import 'package:storeapp/screens/home_page.dart';
import 'package:storeapp/screens/update_product_page.dart';

void main() {
  runApp(const StoreApp());
}
class StoreApp extends StatelessWidget {
  const StoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id : ((context) => const HomePage()),
        UpdateProductPage.id:(context) =>  UpdateProductPage()
      },
      initialRoute: HomePage.id,
      debugShowCheckedModeBanner: false,

    );
  }
}