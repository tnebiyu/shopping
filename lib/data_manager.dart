import 'package:shopping/data_model.dart';
class DataManager{
  List<Catagory>? _menu;
  List<ItemCart>cart = [];

  getMenu(){
    return _menu;
  }
  cartAdd(Product p){
    bool found = false;
    for(var item in cart){
      if(item.product.id == p.id){
        item.quanitity++;
        found =true;
      }
    }
  }
  cartRemove(Product p){
    cart.removeWhere((element) => element.product.id == p.id);
  }
  cartClear(){
    cart.clear();
  }
  double cartTotal(){
    double total =0;
    for(var item in cart){
       total += item.quanitity * item.product.price;
    }
return total;
  }
}