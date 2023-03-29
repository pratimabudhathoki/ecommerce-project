import 'package:flutter/material.dart';
import 'package:prroduct_api_flutter/Models/product_model.dart';
import 'package:prroduct_api_flutter/Repositiries/product_repo.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          "Products",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w200),
        ),
      ),
      body: Column(
        children: [
          Text(
            "products",
            style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
              color: Colors.deepOrange,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FutureBuilder<List<AllProduct>>(
            future: ShowAllproducts().getAllproducts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return (Text("snapshot has an error"));
                }
                List<AllProduct> products = snapshot.data!;
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(20),
                      child: ListTile(
                        onTap: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        tileColor: Colors.amber,
                        leading: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.check_box),
                        ),
                        title: Text(products[index].description),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete),
                        ),
                      ),
                    );
                  },
                );
              }
              return CircularProgressIndicator();
            },
          ),
        ],
      ),
    );
  }
}
