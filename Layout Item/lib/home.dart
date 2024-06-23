import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'model/product.dart';
import 'model/products_repository.dart';
import 'supplemental/asymmetric_view.dart';
import 'colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // TODO: Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      // TODO: Add app bar (102)
      appBar: AppBar(
        backgroundColor: kShrinePink400,
        leading: IconButton(
          onPressed: () {
            print('Menu Button');
          },
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
        ),
        title: const Text(
          'SHRINE',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              print('You`re Search');
            },
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
          ),
        ],
      ),
      // TODO: Replace GridView with AsymmetricView (104)
      body: AsymmetricView(
        products: ProductsRepository.loadProducts(Category.all),
      ),
      resizeToAvoidBottomInset: false,
      // TODO: Set resizeToAvoidBottomInset (101)
    );
  }
}
