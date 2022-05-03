import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:rent_a_trend/models/Product.dart';
import 'package:rent_a_trend/screens/details/details_screen.dart';


class PopularProducts extends StatelessWidget {
  Future getProducts() async {
    var res = await http
        .get(Uri.parse('https://rentatrend.herokuapp.com/products'), headers: {
      'Content-Type': 'application/json',
    });

    Map data = json.decode(res.body);
    Iterable list = data["products"];
    List<Product> products = list.map((l) => Product.fromJson(l)).toList();
    print(products);
    return products;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getProducts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final products = snapshot.data as List<Product>;
          return GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: products.length,
            itemBuilder: (BuildContext ctx, index) {
              return GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  DetailsScreen.routeName,
                  arguments: ProductDetailsArguments(product: products[index]),
                ),
                child: Card(
                  child: Container(
                    // height: 290,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Image.network(
                                products[index].picture ?? '',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              products[index].vendorName ?? '',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rs ${products[index].unitPrice.toString()}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 5,
              mainAxisExtent: 264,
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
