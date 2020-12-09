import 'package:flutter/material.dart';
import 'package:genmish/cart/cart_screen.dart';
import 'package:genmish/models/Product.dart';
import 'package:genmish/productscreen/productcart.dart';

class ProductScreen extends StatelessWidget {
  final String title;
  ProductScreen({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // controller: controller,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          elevation: 0,
          backgroundColor: Color(0xff2874F0),
          centerTitle: true,
          title: Text(title),
          actions: <Widget>[
            Icon(
              Icons.notifications,
              size: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: IconButton(
                icon: Icon(Icons.shopping_cart, size: 20),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen())),
              ),
            ),
          ]),
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height / 11,
          color: Color(0xff2874F0),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: InkWell(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(Icons.search),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 80,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          style: TextStyle(fontSize: 16),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search for Products, Brands and More',
                            hintStyle: TextStyle(fontSize: 16),
                          ),
                          autofocus: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Flexible(
          child: ListView(
            children: List.generate(demoProducts.length, (index) {
              return ProductCard(
                product: demoProducts[index],
              );
            }),
          ),
        )
      ]),
    );
  }
}
