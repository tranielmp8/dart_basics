void main() {
  print("Classes or custom objects");
  var noodles = MenuItem("Veg Noodles", 8.99);
  var pizza =
      Pizza(["mushrooms", "peppers", "italian sausage"], "Deluxe", 19.99);

  print(noodles.title);
  print(noodles.price);
  print(pizza.title);
  print(pizza.price);

  print(noodles.format());
  print(pizza.format());

  print(noodles);
  print(pizza);
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price); // constructor

  // method()
  String format() {
    return "$title --> $price";
  }

  @override
  String toString() {
    return format();
  }
}

//Inherits or Extends from Parent class

class Pizza extends MenuItem {
  List<String> toppings;

// --need to make sure to invoke MenuItem elements such as title and price
  // Pizza(this.toppings, String title, double price) : super(title, price);
  // another way to do this is
  Pizza(this.toppings, super.title, super.price);

  // Method Overriding:
  @override
  String format() {
    var formattedToppings = 'Contains:';

    for (final t in toppings) {
      formattedToppings = '$formattedToppings $t';
    }

    return '$title -> $price \n $formattedToppings';
  }
}
