import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:genmish/DraweItemmodel.dart';
import 'package:genmish/cart/cart_screen.dart';
import 'package:genmish/categories.dart';
import 'package:genmish/category.dart';
import 'package:genmish/footer.dart';
import 'package:genmish/notification.dart';
import 'package:genmish/product_description/popular_product.dart';
import 'package:genmish/size_config.dart';
import 'package:genmish/special_offers.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = ScrollController();
  int _currentIndex;
  List<DrawerItemModel> drawerItemModel;
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addDrawerItem();
  }

  addDrawerItem() {
    drawerItemModel = List<DrawerItemModel>();
    drawerItemModel.add(DrawerItemModel("Flutter",
        "https://rukminim1.flixcart.com/www/50/50/promos/11/07/2018/70e5346e-fce4-4718-8e56-27be8492faa5.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Electronics",
        "https://rukminim1.flixcart.com/www/50/50/promos/31/10/2016/f7634981-4fd5-4127-9b93-9f57606dccd3.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Fashion",
        "https://rukminim1.flixcart.com/www/50/50/promos/30/10/2016/39d573db-dd62-430a-8166-0dcc53b6f299.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Home and Furniture",
        "https://rukminim1.flixcart.com/www/50/50/promos/30/10/2016/6e4fe892-0517-46bc-ac56-f3ee86bf8aa4.png?q=80"));
    drawerItemModel.add(DrawerItemModel("TVs & Appliances",
        "https://rukminim1.flixcart.com/www/50/50/promos/31/10/2016/db1549b7-a409-4bea-aa76-d57e97fd9304.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Toys and Baby",
        "https://rukminim1.flixcart.com/www/50/50/promos/14/08/2018/c1895632-47f2-45f7-a2af-0f736fd52969.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Beauty and Personal Care",
        "https://rukminim1.flixcart.com/www/50/50/promos/27/07/2018/b124a16b-e4b6-4d76-a271-81cf6ee830c9.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Sports,Books and More",
        "https://rukminim1.flixcart.com/www/50/50/promos/31/10/2016/e33209f1-50f0-4f08-bc7b-bf0d61c87b84.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Grocery",
        "https://rukminim1.flixcart.com/www/50/50/promos/30/06/2017/250d742c-0971-4a3e-bef7-6cfbdd6d306b.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Offer Zone",
        "https://rukminim1.flixcart.com/www/50/50/promos/08/04/2016/a12880b1-9c2b-4b4b-9029-31ba9ff666bf.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Game Zone",
        "https://rukminim1.flixcart.com/www/50/50/promos/30/09/2018/85180d09-63b4-43c4-b2ab-5ef5f6802620.png?q=80"));
    drawerItemModel.add(DrawerItemModel("My Orders",
        "https://rukminim1.flixcart.com/www/50/50/promos/10/03/2017/b7a79d1a-e088-4c4b-951f-9b8214719cc9.png?q=80"));
    drawerItemModel.add(DrawerItemModel("My Rewards",
        "https://rukminim1.flixcart.com/www/50/50/promos/31/08/2016/3afaefd4-3961-4cac-921c-b9517c96ad47.png?q=80"));
    drawerItemModel.add(DrawerItemModel("My Cart",
        "https://rukminim1.flixcart.com/www/50/50/promos/10/03/2017/920f4fcd-8977-43a9-9014-abcad558de8d.png?q=80"));
    drawerItemModel.add(DrawerItemModel("My Wishlist",
        "https://rukminim1.flixcart.com/www/50/50/promos/10/03/2017/1f81361d-9a8e-494a-bd15-6d647c9bd8a7.png?q=80"));
    drawerItemModel.add(DrawerItemModel("My Account",
        "https://rukminim1.flixcart.com/www/50/50/promos/07/04/2016/c35cca9e-2d7a-4583-9770-32a97ddf1c9b.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Notification Preferences", null));
    drawerItemModel.add(DrawerItemModel("Gift Card", null));
    drawerItemModel.add(DrawerItemModel("My Chats", null));
    drawerItemModel.add(DrawerItemModel("Help Centre", null));
    drawerItemModel.add(DrawerItemModel("Legal", null));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    SizeConfig().init(context);
    buildItem(BuildContext context, int index) {
      if (drawerItemModel[index].imageRes != null) {
        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Image.network(
                      drawerItemModel[index].imageRes,
                      height: 15,
                      width: 15,
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Text(
                      drawerItemModel[index].name,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            index == 0 || index == 8 || index == 10 || index == 15
                ? Container(
                    color: Colors.grey,
                    height: 1,
                  )
                : SizedBox(
                    height: 0,
                  )
          ],
        );
      } else {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10, top: 10, left: 20),
          child: Text(
            drawerItemModel[index].name,
            style: TextStyle(fontSize: 15),
          ),
        );
      }
    }

    return Scaffold(
        appBar: AppBar(
            // controller: controller,
            elevation: 0,
            backgroundColor: Color(0xff2874F0),
            centerTitle: true,
            title: Text("Shopping"),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  size: 20,
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationScreen(),
                  ),
                ),
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
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                height: size.height / 10,
                color: Color(0xff2874F0),
                child: Center(
                  child: ListTile(
                    title: Text(
                      'Home',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: drawerItemModel.length,
                itemBuilder: (context, index) {
                  return buildItem(context, index);
                },
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 11,
              color: Color(0xff2874F0),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
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
                                hintText:
                                    'Search for Products, Brands and More',
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
                controller: controller,
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 180,
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    items: imgList
                        .map(
                          (e) => Container(
                            margin: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              // gradient: LinearGradient(
                              //   begin: Alignment.topCenter,
                              //   end: Alignment.bottomCenter,
                              //   colors: [
                              //     Color(0xFF343434).withOpacity(0.4),
                              //     Color(0xFF343434).withOpacity(0.15),
                              //   ],
                              // ),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(e),
                                fit: BoxFit.cover,
                              ),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.black,
                              //     blurRadius: 2.5,
                              //     spreadRadius: 0.0,
                              //     offset: Offset(2.0,
                              //         1.0), // shadow direction: bottom right
                              //   )
                              // ],
                            ),
                            child: Center(
                                // child: Text("Shpping..."),
                                ),
                          ),
                        )
                        .toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(imgList, (index, url) {
                      return Container(
                        width: 10.0,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? Colors.blueAccent
                              : Colors.grey[200],
                        ),
                      );
                    }),
                  ),
                  Categories(),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  SpecialOffers(),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  PopularProducts(),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Category(),
                  // SizedBox(
                  //   height: getProportionateScreenHeight(10),
                  // ),
                  Divider(),
                  Footer()
                ],
              ),
            ),
          ],
        ));
  }
}
