import 'package:get/get.dart';
import 'package:shopping_app/models/product.dart';

class ProductController extends GetxController {
  final List<Product> _items = [
    Product(
      id: 1,
      productTitle: 'Sport Shoe',
      description: 'Made for you check it out',
      price: 7000.00,
      imageUrl:
          'https://ng.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/33/564467/1.jpg?5116',
    ),
    Product(
      id: 2,
      productTitle: 'Legend',
      description:
          'Built to last forever, StormKing™ lug rubber outsoles and a flexible elastic goring, this can only be for the Legends and i bet you, you have not seen it anywhere.',
      price: 63000.00,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-Legend-BlackMatte-3.4_672x672.jpg?v=1600886623',
    ),
    Product(
      id: 3,
      productTitle: 'The Chelsea',
      description: 'Functional and Fashionable',
      price: 49.00,
      imageUrl:
          'https://ng.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/17/826663/1.jpg?9995',
    ),
    Product(
      id: 4,
      productTitle: 'The Chelsea',
      description:
          'Comfortable as you\'d expect.This can only be found at Resilient collection.',
      price: 49.99,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Captain-Natural-3.jpg?v=1584114360',
    ),
    Product(
      id: 5,
      productTitle: 'Men\'s Sneakers',
      description: 'Clean & Comfortable Sneakers made with classic Leathers.',
      price: 49.99,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-PremierLowTop-Black-3.4.jpg?v=1600270679',
    ),
    Product(
      id: 6,
      productTitle: 'The Chelsea',
      description: 'Made for men who understand what classic means',
      price: 49.99,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-Cavalier-Toffee-210402-2.jpg?v=1618424894',
    ),
    Product(
      id: 7,
      productTitle: 'Men\'s Sneakers',
      description: 'Clean & comfortable sneakers made wih class',
      price: 49.99,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0419/1525/products/1024x1024-Men-Cavalier-Toffee-210402-3.jpg?v=1618424894',
    ),
    Product(
      id: 8,
      productTitle: 'Men\'s Sneakers',
      description: 'Clean and comfortable sneakers made with class',
      price: 49.99,
      imageUrl:
          'https://ng.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/19/753127/1.jpg?1470',
    ),
    Product(
      id: 9,
      productTitle: 'Men\'s Sneakers',
      description: 'Clean & Comfortable Sneakers made with classic Leathers.',
      price: 49.99,
      imageUrl:
          'https://ng.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/19/753127/1.jpg?1470',
    ),
  ];

  List<Product> get items {
    return [..._items] ;
  }

  List<Product> get favouriteItems {
    return _items.where((productItem) => productItem.isFavourite).toList();
  }

  Product findProductById(int id){
    return _items.firstWhere((element) => element.id == id);
  }

  void toggleFavouriteStatus(int id){
    items[id].isFavourite = !items[id].isFavourite;
    update();
  }
}
