import 'package:flutter/material.dart';
import 'package:prroduct_api_flutter/screen/list_images.dart';

class CartData extends StatefulWidget {
  const CartData({super.key});

  @override
  State<CartData> createState() => _CartDataState();
}

class _CartDataState extends State<CartData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text(
            "Categories",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0,
        ),
        body: ListView.separated(
          padding: EdgeInsets.all(16),
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 2,
            );
          },
          itemCount: myProducts.length,
          itemBuilder: (context, index) {
            return Container(
              child: Row(
                children: [
                  Container(
                      height: 90,
                      width: 90,
                      child: Image.network(myProducts[index].images)),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        myProducts[index].name,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'RS ' + myProducts[index].price.toString(),
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        color: Colors.deepOrange,
                      ))
                ],
              ),
            );
          },
        )

        /*ListView.separated(
          padding: EdgeInsets.all(16),
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 2,
            );
          },
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                  height: 220,
                  width: 100,
                  color: Colors.red,
                  child: Image.network(
                    myProducts[index].images,
                  )),
              title: Text(myProducts[index].name),
              subtitle: Text('RS ' + myProducts[index].price.toString()),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  )),
            );
          },
          itemCount: myProducts.length,
        )*/
        );
  }
}
