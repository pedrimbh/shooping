import 'package:flutter/material.dart';
import 'package:shooping/widgets/product/product-item.widget.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ProductItem(
            asset: "assets/product-1.png",
            title: "Cadeira",
            brand: "CadeirAço",
            price: "150",
          ),
          ProductItem(
            asset: "assets/product-2.png",
            title: "Relogio",
            brand: "Armani",
            price: "450",
          ),
          ProductItem(
            asset: "assets/product-3.png",
            title: "Fone de ouvido",
            brand: "Apple",
            price: "600",
          ),
          ProductItem(
            asset: "assets/product-4.png",
            title: "Creme",
            brand: "Cremoso",
            price: "50",
          ),
          ProductItem(
            asset: "assets/product-5.png",
            title: "Celular",
            brand: "Xiaomi",
            price: "1500",
          ),
          ProductItem(
            asset: "assets/product-6.png",
            title: "Caixa de som",
            brand: "JBS",
            price: "300",
          ),
          ProductItem(
            asset: "assets/product-7.png",
            title: "Fone sem fio",
            brand: "JBS",
            price: "2000",
          ),
          ProductItem(
            asset: "assets/product-8.png",
            title: "Xbox",
            brand: "Microsoft",
            price: "3200",
          ),
          ProductItem(
            asset: "assets/product-9.png",
            title: "Eletronico",
            brand: "Eletrons",
            price: "300",
          ),
          ProductItem(
            asset: "assets/product-10.png",
            title: "Blusa de frio",
            brand: "Nike",
            price: "220",
          )
        ],
      ),
    );
  }
}
