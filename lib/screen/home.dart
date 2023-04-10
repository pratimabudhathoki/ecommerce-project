import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:prroduct_api_flutter/Repositiries/dress_repo.dart';
import 'package:prroduct_api_flutter/screen/casual_sliderimage.dart';
import 'package:prroduct_api_flutter/screen/list_images.dart';
import 'package:prroduct_api_flutter/screen/product_detail.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(onTap: () {}, child: Icon(Icons.notifications)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: CasualSlider.length,
              itemBuilder: (context, index, realIndex) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    child: Image.network(
                      CasualSlider[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5)),
            ),
            SizedBox(height: 10),
            FutureBuilder(
                future: getallproducts(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return GridView.builder(
                      physics: NeverScrollableScrollPhysics(), //stop scroll
                      shrinkWrap: true, // take space as it needed
                      padding: EdgeInsets.all(16),
                      itemCount: snapshot.data!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1 / 2,
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            /*var selectedProduct = snapshot.data!.firstWhere(
                                  (element) => element.id == snapshot.data![index].id);
                              print(selectedProduct.name);*/

                            Products detailproduct = snapshot.data!.firstWhere(
                                (element) =>
                                    element.id == snapshot.data![index].id);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetail(
                                          data: detailproduct,
                                        )));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(10)),
                                    child: Image(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          snapshot.data![index].images),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(snapshot.data![index].name),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 10, bottom: 10),
                                  child: Text(
                                    "RS: " +
                                        snapshot.data![index].price.toString(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, bottom: 10),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      addtocart(snapshot.data![index]);
                                    },
                                    child: Text(
                                      "Add to Cart",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.deepOrange,
                                        foregroundColor: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
          ],
        ),
      ),
    );
  }
}
