
class Product{
  int id;
  String name;
  double price;

  Product({required this.id,required this.name, required this.price} );
}

class Category{
  String name;
  List<Product> products;

  Category({required this.name,required this.products});
}

class ItemCart{
  Product product;
  int quanitity;

  ItemCart(this.product, this.quanitity);
}