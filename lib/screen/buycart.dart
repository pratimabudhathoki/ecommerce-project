import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:prroduct_api_flutter/screen/cart.dart';
import 'package:prroduct_api_flutter/screen/list_images.dart';
import 'product_detail.dart';

class Cartpayment extends StatefulWidget {
  Cartpayment({super.key, required this.data});
  CartData data;

  @override
  State<Cartpayment> createState() => _CartpaymentState();
}

class _CartpaymentState extends State<Cartpayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment method"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 8, left: 8),
            height: 50,
            width: double.infinity,
            child: Text(
              "Recommended methods(s)",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 30,
            color: Colors.white,
            child: Row(
              children: [
                Icon(
                  Icons.payment,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "eSewa Mobile Wallet",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Payments methods",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.bold),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 60,
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Row(
                children: [
                  Icon(
                    Icons.payment,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "eSewa Mobile Wallet",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          InkWell(
            onTap: (() {}),
            child: Row(
              children: [
                Icon(
                  Icons.money,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Cash On Delivery",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.black.withOpacity(0.1),
          ),
          SizedBox(
            height: 55,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Sub Total",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text("Rs: ${calculatecart()}")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  "Delivery charge",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text("Rs: 100")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  "Total Amount",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "Rs: ${calculatecart() + 100} ",
                  style: TextStyle(
                      color: Colors.deepOrange, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
