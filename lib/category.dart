import 'package:flutter/material.dart';
import 'package:genmish/productscreen/productscreen.dart';
import 'package:genmish/section_title.dart';
import 'package:genmish/size_config.dart';

class Category extends StatelessWidget {
  const Category({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List categorys = ["Smart Phone", "Fashion"];
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "All Categories",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 2),
          decoration: BoxDecoration(
              color: Colors.amber.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10)),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryCard(
                      image: "assets/images/Image Banner 2.png",
                      category: categorys[0],
                      numOfBrands: 18,
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProductScreen(title: categorys[0])));
                      },
                    ),
                    CategoryCard(
                      image: "assets/images/Image Banner 3.png",
                      category: categorys[1],
                      numOfBrands: 24,
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProductScreen(title: categorys[1])));
                      },
                    ),
                    // SizedBox(width: getProportionateScreenWidth(20)),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryCard(
                      image: "assets/images/Image Banner 2.png",
                      category: categorys[0],
                      numOfBrands: 18,
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProductScreen(title: categorys[0])));
                      },
                    ),
                    CategoryCard(
                      image: "assets/images/Image Banner 3.png",
                      category: categorys[1],
                      numOfBrands: 24,
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProductScreen(title: categorys[1])));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: (MediaQuery.of(context).size.width / 2) - 10,
          height: (MediaQuery.of(context).size.width / 2) - 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: (MediaQuery.of(context).size.width / 2) - 10,
                  width: (MediaQuery.of(context).size.width / 2) - 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
