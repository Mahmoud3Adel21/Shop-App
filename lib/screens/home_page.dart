import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/get_all_product_service.dart';

import '../widget/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'New Tren',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.cartPlus),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 85),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductsService().getAllProduct(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> products =snapshot.data!;
              return GridView.builder(
                itemCount: products.length,
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 100),
                itemBuilder: ((context, index) {
                  return CustomCard(product: products[index],);
                }),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
