import 'package:flutter/material.dart';
import 'package:prroduct_api_flutter/screen/list_images.dart';
import 'package:prroduct_api_flutter/screen/payment_sysytem.dart';

class BuyDetail extends StatefulWidget {
  BuyDetail({super.key, required this.data});
  Products data;

  @override
  State<BuyDetail> createState() => _BuyDetailState();
}

class _BuyDetailState extends State<BuyDetail> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buy Detail"),
        backgroundColor: Colors.deepOrange,
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(10),
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentSysytem(data: widget.data),
                ));
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
          ),
          child: Text("Buy Now"),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 170,
                  width: 150,
                  child: Image.network(
                    widget.data.images.toString(),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Cost Price Rs: " + widget.data.price.toString(),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "Delivery Charge Rs: " +
                              widget.data.delivery_charge.toString(),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        "Total Rs: ${widget.data.price + widget.data.delivery_charge}",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          //quantiy section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Quantity"),
                SizedBox(
                  width: 200,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (counter != 1) {
                        counter--;
                      }
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 23,
                    width: 25,
                    child: Icon(
                      Icons.remove,
                      size: 20,
                      color: counter == 1 ? Colors.grey.shade300 : Colors.black,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Colors.black.withOpacity(0.3))),
                  ),
                ),
                Container(
                  height: 23,
                  width: 45,
                  alignment: Alignment.center,
                  child: Text(
                    counter.toString(),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Colors.black.withOpacity(0.3))),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (counter < 5) {
                        counter++;
                      }
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 23,
                    width: 25,
                    child: Icon(
                      Icons.add,
                      size: 20,
                      color: counter == 5 ? Colors.grey.shade300 : Colors.black,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Colors.black.withOpacity(0.3))),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
