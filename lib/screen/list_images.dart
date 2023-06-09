import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Products {
  final int id;
  final String name;
  final String images;
  int price;
  final String country;
  final int delivery_charge;
  final sizes;

  Products({
    required this.id,
    required this.name,
    required this.images,
    required this.price,
    required this.country,
    required this.delivery_charge,
    required this.sizes,
  });
  factory Products.fromJson(Map<String, dynamic> json) => Products(
      id: json["id"],
      name: json["name"],
      images: json["image"],
      price: json["price"],
      country: json["country"],
      delivery_charge: json["delivery charge"],
      sizes: json["sizes"]);
}

List<Products> cartData = [];
addtocart(Products datatocart) async {
  var exists = cartData.contains(datatocart);
  if (exists == true) {
    await Fluttertoast.showToast(
        msg: "Already added to cart",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.deepOrange,
        textColor: Colors.white,
        fontSize: 16.0);
    // item is already in list
    // show toast alredy exists.
  } else {
    cartData.add(datatocart);
  }
}

// adding the cart items
calculatecart() {
  var totalPrice = 0;
  cartData.forEach((element) {
    totalPrice = totalPrice + element.price;
  });
  return totalPrice;
}

List<Products> myProducts = [
  // Products(
  //   id: 0,
  //   name: 'Ranbow onepice',
  //   images:
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI79QBlKOUBt5bBb8VL4CYaE-R-nZP-Adimg&usqp=CAU",
  //   price: 1000,
  //   country: "Thailand",
  //   delivery_charge: 100,
  // ),
  // Products(
  //   id: 1,
  //   name: 'Casual Dress',
  //   images:
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDUvVrd0emxQZCZHfIzm36-1ro0RACw3TLi16DZRcZQHoClZHbEzSPJX9woqLg6bJPKg8&usqp=CAU",
  //   price: 1200,
  //   country: "China",
  //   delivery_charge: 100,
  // ),
  // Products(
  //   id: 2,
  //   name: 'suit colord',
  //   images:
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyqP4dB3kuKRSSxQRdmVet6QqCuPxB-BCQZ6zYP8NxdzeAJoxYBLUpbFaoKV0hEjYA0hY&usqp=CAU",
  //   price: 1500,
  //   country: "Malaysia",
  //   delivery_charge: 100,
  // ),
  // Products(
  //   id: 3,
  //   name: 'Colorcomno',
  //   images:
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi3n4_iB1M40lNgDX5vXS8JKJbclBXq77BgA&usqp=CAU",
  //   price: 2000,
  //   country: "Maldives",
  //   delivery_charge: 100,
  // ),
  // Products(
  //   id: 4,
  //   name: 'yellowcombo',
  //   images:
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXf3jZa3Mb7mZFNY8ryM8uUGOFtRuw8Gn2ujSwlMJv8ivzyrd7-YXB5rWbGrOrfPJyYOg&usqp=CAU",
  //   price: 1540,
  //   country: "Taiwan",
  //   delivery_charge: 100,
  // ),
  // Products(
  //   id: 5,
  //   name: 'butterfly',
  //   images:
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXf3jZa3Mb7mZFNY8ryM8uUGOFtRuw8Gn2ujSwlMJv8ivzyrd7-YXB5rWbGrOrfPJyYOg&usqp=CAU",
  //   price: 1200,
  //   country: "Mali",
  //   delivery_charge: 100,
  // ),
  // Products(
  //     id: 6,
  //     name: 'random dress',
  //     images:
  //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn4SYKSFOHXcQnDdPdV4Nv5tmLT7my78DBMQ&usqp=CAU",
  //     price: 2400,
  //     country: "Hong-Kong",
  //     delivery_charge: 100),
  // Products(
  //   id: 7,
  //   name: "tiney dress1",
  //   images:
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6GxCmeACUaOah1mGJAS_pSR6ipoACwgc3WA&usqp=CAU",
  //   price: 2400,
  //   country: "USA",
  //   delivery_charge: 100,
  // ),
  // Products(
  //   id: 8,
  //   name: 'casual pice',
  //   images:
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpWP4fR4YRJ-LYL2A2zEb2yQwlyUCEB5awwu_6SwW3ezNhd_syWLZVNvJPOmQBeKkaxDY&usqp=CAU",
  //   price: 3000,
  //   country: "India",
  //   delivery_charge: 100,
  // ),
  // Products(
  //   id: 9,
  //   name: 'loisviton',
  //   images:
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnVn9CQkkmkyJ_IQ9DnZ3Otx40Jk2CShXL-g&usqp=CAU",
  //   price: 3200,
  //   country: "Germany",
  //   delivery_charge: 100,
  // ),
  // Products(
  //   id: 10,
  //   name: "lantahum dress",
  //   images:
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn4SYKSFOHXcQnDdPdV4Nv5tmLT7my78DBMQ&usqp=CAU",
  //   price: 5000,
  //   country: "Colombia",
  //   delivery_charge: 100,
  // ),
];

List<Products> filtered = [];

filter(String query) {
  myProducts.forEach((element) {
    if (element.name.toLowerCase().contains(query.toLowerCase())) {
      filtered.add(element);
    }
  });
  return filtered;
}

int quantity(Products myproduct, int quantity) {
  var foundProduct = myProducts.firstWhere((e) => e.id == myproduct.id);
  int newPrice = foundProduct.price * quantity;
  return newPrice;
}
