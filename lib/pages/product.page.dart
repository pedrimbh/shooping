import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String asset;
  final String title;
  final String brand;
  ProductPage(
      {@required this.asset, @required this.title, @required this.brand});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            backgroundColor: Colors.white.withOpacity(0),
            elevation: 0,
            floating: false,
            expandedHeight: 500,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Image.asset(
                asset,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ];
      },
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Text(
              title,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(brand),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Details",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Nike Dri-fit is a polyester fabric designed to help you keep dry so you can more conforably work harder, longer.",
            ),
          ),
        ],
      ),
    ));
  }
}
