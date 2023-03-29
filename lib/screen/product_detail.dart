import 'package:flutter/material.dart';
import 'package:prroduct_api_flutter/screen/list_images.dart';

class ProductDetail extends StatefulWidget {
  ProductDetail({super.key, required this.data});
  Products data;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Text("Total:",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            Text(" Rs${widget.data.price + widget.data.delivery_charge}",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.deepOrange)),
              child: Text('Buy Now'),
            ),
            SizedBox(
              width: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
              ),
              child: Text("Add to Cart"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Product Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80)),
              child: Container(
                // alignment: Alignment.center,
                decoration: BoxDecoration(),
                height: 300,
                child: Image.network(
                  widget.data.images,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  widget.data.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "Cost: " + widget.data.price.toString(),
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(0.9)),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Divider(),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Size",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: MediaQuery.of(context).size.width *
                    0.6, //to know the size of screen

                //padding: const EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.deepOrange.shade400,
                          foregroundColor: Colors.white,
                          child: Text("XS"),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.deepOrange.shade400,
                          foregroundColor: Colors.white,
                          child: Text("S"),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.deepOrange.shade400,
                          foregroundColor: Colors.white,
                          child: Text("M"),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.deepOrange.shade400,
                          foregroundColor: Colors.white,
                          child: Text("L"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "Country",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    widget.data.country,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              margin: EdgeInsets.all(5),
              child: Row(
                children: [
                  Text(
                    "Rating ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow.shade800,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow.shade800,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow.shade800,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow.shade800,
                  ),
                  Icon(
                    Icons.star_border,
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              margin: EdgeInsets.all(7),
              child: Row(
                children: [
                  Icon(Icons.delivery_dining),
                  Text(
                    "   Delivery Charge",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Spacer(),
                  Text("Rs: " + widget.data.delivery_charge.toString())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
