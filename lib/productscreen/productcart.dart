import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:genmish/models/Product.dart';
import 'package:genmish/product_description/components/details_screen.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  ProductCard({this.product});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          margin: EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              DetailsScreen.routeName,
              arguments: ProductDetailsArguments(product: product),
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Image.asset(
                    product.images[0],
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 182,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          child: Text(
                        product.description,
                        style: TextStyle(fontSize: 14),
                      )),
                      Text(
                        "\$${product.price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 18),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey,
        )
      ],
    );
  }
}
