import 'package:flutter/material.dart';
import 'package:prroduct_api_flutter/screen/list_images.dart';
import 'package:prroduct_api_flutter/screen/product_detail.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 40,
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    hintText: "Search",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.deepOrange,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(width: 1, color: Colors.red),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(width: 1, color: Colors.red),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  filter(_controller.text);
                  setState(() {});
                },
                child: Text(
                  "Search",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 15),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            //stop scroll
            shrinkWrap: true, // take space as it needed
            padding: EdgeInsets.all(16),
            itemCount: filtered.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 2,
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  /*var selectedProduct = filtered.firstWhere(
                                (element) => element.id == filtered[index].id);
                            print(selectedProduct.name);*/

                  Products detailproduct = filtered.firstWhere(
                      (element) => element.id == filtered[index].id);
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
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(10)),
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(filtered[index].images),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(filtered[index].name),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10),
                        child: Text(
                          "RS: " + filtered[index].price.toString(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            addtocart(filtered[index]);
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
          ),
        ),
      ],
    );
  }
}
