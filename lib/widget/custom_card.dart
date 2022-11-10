import 'package:flutter/material.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/screens/update_product_page.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  CustomCard({Key? key, required this.product}) : super(key: key);

  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id,arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(.1),
                  spreadRadius: 20,
                  offset: const Offset(10, 10)),
            ]),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0,9),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${product.price.toString()}',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 12,
            top: -80,
            child: Image.network(
              product.image,
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
