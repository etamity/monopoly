extends Node

var Math = preload('res://scripts/libs/math.gd');

const _color = [
	  "red",
	  "green",
	  "blue",
	  "yellow",
	  "purple",
	  "mint green",
	  "teal",
	  "white",
	  "black",
	  "orange",
	  "pink",
	  "grey",
	  "maroon",
	  "violet",
	  "turquoise",
	  "tan",
	  "sky blue",
	  "salmon",
	  "plum",
	  "orchid",
	  "olive",
	  "magenta",
	  "lime",
	  "ivory",
	  "indigo",
	  "gold",
	  "fuchsia",
	  "cyan",
	  "azure",
	  "lavender",
	  "silver"
];

const _department = [
    "Books",
    "Movies",
    "Music",
    "Games",
    "Electronics",
    "Computers",
    "Home",
    "Garden",
    "Tools",
    "Grocery",
    "Health",
    "Beauty",
    "Toys",
    "Kids",
    "Baby",
    "Clothing",
    "Shoes",
    "Jewelery",
    "Sports",
    "Outdoors",
    "Automotive",
    "Industrial"
];

const _adjective = [
    "Small",
    "Ergonomic",
    "Rustic",
    "Intelligent",
    "Gorgeous",
    "Incredible",
    "Fantastic",
    "Practical",
    "Sleek",
    "Awesome",
    "Generic",
    "Handcrafted",
    "Handmade",
    "Licensed",
    "Refined",
    "Unbranded",
    "Tasty"
];

const _material = [
    "Steel",
    "Wooden",
    "Concrete",
    "Plastic",
    "Cotton",
    "Granite",
    "Rubber",
    "Metal",
    "Soft",
    "Fresh",
    "Frozen"
];

const _product = [
    "Chair",
    "Car",
    "Computer",
    "Keyboard",
    "Mouse",
    "Bike",
    "Ball",
    "Gloves",
    "Pants",
    "Shirt",
    "Table",
    "Shoes",
    "Hat",
    "Towels",
    "Soap",
    "Tuna",
    "Chicken",
    "Fish",
    "Cheese",
    "Bacon",
    "Pizza",
    "Salad",
    "Sausages",
    "Chips"
];


func color():
  randomize()
  return Math.random_array(_color);

func department():
  randomize()
  return Math.random_array(_department);

func adjective():
  randomize()
  return Math.random_array(_adjective);

func material():
  randomize()
  return Math.random_array(_material);
  
func product():
  randomize()
  return Math.random_array(_product);
    
func product_name():
  return self.adjective() + " " + self.material() + " " + self.product();

func price():
  return Math.price();