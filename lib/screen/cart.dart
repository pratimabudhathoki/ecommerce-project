import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:prroduct_api_flutter/screen/buycart.dart';
import 'package:prroduct_api_flutter/screen/list_images.dart';
import 'package:prroduct_api_flutter/screen/payment_sysytem.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';

class CartData extends StatefulWidget {
  CartData({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(16),
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 2,
                );
              },
              itemCount: cartData.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Row(
                    children: [
                      Container(
                          height: 90,
                          width: 90,
                          child: Image.network(cartData[index].images)),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartData[index].name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'RS ' + cartData[index].price.toString(),
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            cartData.removeAt(index);
                          });
                        },
                        icon: Icon(
                          Icons.delete,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            cartData.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Total: Rs ${calculatecart()}",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ))
                : Container(
                    padding: EdgeInsets.only(top: 50),
                    child: Center(
                      child: Lottie.asset("assets/67163-empty-cart.json",
                          repeat: false),
                    ),
                  ),
            cartData.isNotEmpty
                ? Container(
                    padding: EdgeInsets.all(10),
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cartpayment(data: widget),
                          ),
                        );
                      },
                      child: Text("Buy Now"),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepOrange),
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),

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
                    cartData[index].images,
                  )),
              title: Text(cartData[index].name),
              subtitle: Text('RS ' + cartData[index].price.toString()),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  )),
            );
          },
          itemCount: cartData.length,
        )*/
    );
  }
}
