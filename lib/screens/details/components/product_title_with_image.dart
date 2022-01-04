// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/models/products.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'vichy',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              product.title,
              style: TextStyle(
                    fontSize: 40,
                    fontWeight : FontWeight.bold,
                    color: Colors.white
              ) 
           ),
           SizedBox(height: kDefaultPadding,),
            Row(
              children: <Widget>[
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: 'price\n',
                  style: TextStyle(color: Colors.white)),
                  TextSpan(text: '\$${product.price}',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight : FontWeight.bold,
                    color: Colors.white,
              )),
                ])
                ),
                SizedBox(width:kDefaultPadding),
                Expanded(child: 
                Image.asset(
                  product.image,
                  fit: BoxFit.fill
                  )),
              ],
            )
          ]),
    );
  }
}