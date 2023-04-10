import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:prroduct_api_flutter/screen/list_images.dart';

Future<List<Products>> getallproducts() async {
  final snapshot =
      await FirebaseFirestore.instance.collection('products').get();
  final documents = snapshot.docs;
  for (var doc in documents) {
    final myJson = doc.data();
    Products product = Products.fromJson(myJson);
    myProducts.add(product);
  }
  return myProducts;
}
