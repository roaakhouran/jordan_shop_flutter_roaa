import 'package:flutter/material.dart';
import '../controllers/shop_controller.dart';
import '../models/product_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final ShopController controller = ShopController();
  List<ProductModel> searchResults = [];

  @override
  void initState() {
    super.initState();
    searchResults = controller.products;
  }

  void _runSearch(String query) {
    setState(() {
      searchResults = controller.searchProducts(query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            onChanged: (value) => _runSearch(value),
            decoration: const InputDecoration(
              labelText: 'Search Products',
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Expanded(
          child: searchResults.isEmpty
              ? const Center(child: Text('No products found'))
              : ListView.builder(
                  itemCount: searchResults.length,
                  itemBuilder: (context, index) {
                    final product = searchResults[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: ListTile(
                        leading: Image.network(
                          product.imageUrl,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(product.title),
                        subtitle: Text('JOD ${product.price}'),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}