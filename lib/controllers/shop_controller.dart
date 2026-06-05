import '../models/category_model.dart';
import '../models/product_model.dart';

class ShopController {
  List<CategoryModel> categories = [
    CategoryModel(id: 'c1', name: 'Electronics', icon: 'laptop'),
    CategoryModel(id: 'c2', name: 'Clothes', icon: 'checkroom'),
    CategoryModel(id: 'c3', name: 'Shoes', icon: 'ice_skating'),
  ];

  List<ProductModel> products = [
    ProductModel(
      id: 'p1',
      title: 'Gaming Laptop',
      price: 850.0,
      description: 'High performance gaming laptop with 16GB RAM and RTX 4060.',
      category: 'Electronics',
      imageUrl: 'https://images.unsplash.com/photo-1603302576837-37561b2e2302',
    ),
    ProductModel(
      id: 'p2',
      title: 'Wireless Headphones',
      price: 99.0,
      description: 'Noise cancelling over-ear headphones with 40h battery life.',
      category: 'Electronics',
      imageUrl: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e',
    ),
    ProductModel(
      id: 'p3',
      title: 'Winter Jacket',
      price: 65.0,
      description: 'Warm and waterproof heavy winter jacket for men and women.',
      category: 'Clothes',
      imageUrl: 'https://images.unsplash.com/photo-1551028719-00167b16eac5',
    ),
    ProductModel(
      id: 'p4',
      title: 'Running Shoes',
      price: 75.0,
      description: 'Comfortable and lightweight sport shoes for daily running.',
      category: 'Shoes',
      imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff',
    ),
    ProductModel(
      id: 'p5',
      title: 'Summer T-Shirt',
      price: 15.0,
      description: '100% Cotton breathable summer t-shirt for daily wear.',
      category: 'Clothes',
      imageUrl: 'https://images.unsplash.com/photo-1583743814966-8936f5b7be1a',
    ),
    ProductModel(
      id: 'p6',
      title: 'Leather Boots',
      price: 90.0,
      description: 'Classic and durable waterproof brown leather boots.',
      category: 'Shoes',
      imageUrl: 'https://images.unsplash.com/photo-1520639888713-7851133b1ed0',
    ),
  ];

  List<ProductModel> getFilteredProducts(String categoryName) {
    return products.where((product) => product.category == categoryName).toList();
  }

  List<ProductModel> searchProducts(String query) {
    return products
        .where((product) => product.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}