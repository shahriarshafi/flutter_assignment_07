class Product{
  String name;
  double price;
  int counter;

  Product({required this.price, required this.name, this.counter = 0});

  myCounter(){
    counter++;
  }
}