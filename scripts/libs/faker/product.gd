extends Node

onready var global = get_node('/root/global');
onready var Math = global.Math;

const color = [
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

const department = [
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

const adjective = [
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

const material = [
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

const product = [
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
  return Math.random_array(color);

func department():
  randomize()
  return Math.random_array(department);

func adjective():
  randomize()
  return Math.random_array(adjective);

func material():
  randomize()
  return Math.random_array(material);
  
func product():
  randomize()
  return Math.random_array(product);
    
func product_name():
  return self.adjective() + " " + self.material() + " " + self.product();

func price():
  return Math.price();