//taking code from classes
void main() {
  print("----GENERICS----");
  var noodles = MenuItem("Veg Noodles", 8.99);
  var pizza =
      Pizza(["mushrooms", "peppers", "italian sausage"], "Deluxe", 19.99);
  var roast = MenuItem("veggie roast dinner", 12.49);
  var kebab = MenuItem("steak kebab", 8.59);

  print("$noodles, $pizza, $roast, $kebab");

  var foods = Collection('Menu Items', [noodles, pizza, roast, kebab]);

  var random = foods.randomItem();
  print(random);
}

// ---- CLASS CREATION ---

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

// -- GENERIC Type <T>
class Collection<T> {
  String name;
  List<T> data;

  Collection(this.name, this.data);

// Type T for randomItem function
  T randomItem() {
    data.shuffle();

    return data[0];
  }

// class Collection {
//   String name;
//   List data;

//   Collection(this.name, this.data);

//   randomItem() {
//     data.shuffle();

//     return data[0];
//   }
}
