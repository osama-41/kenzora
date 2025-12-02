import 'package:flutter/material.dart';
import 'package:kenzora/features/home/data/models/product_model.dart';
import 'package:kenzora/features/home/ui/widgets/products_list_view_item.dart';

class ProductsListView extends StatelessWidget {
  final List<ProductModel?>? productsList;
  const ProductsListView({super.key, required this.productsList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsList?.length,
      itemBuilder: (context, index) {
        return ProductsListViewItem(productModel: productsList?[index]);
      },
    );
  }
}
