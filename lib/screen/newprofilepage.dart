import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NewProfilePage extends StatefulWidget {
  const NewProfilePage({super.key});

  @override
  State<NewProfilePage> createState() => _NewProfilePageState();
}

class _NewProfilePageState extends State<NewProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 50),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Wrap(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.camera,
                            ),
                            title: Text("Take a Photo"),
                          ),
                          ListTile(
                            leading: Icon(Icons.photo_album),
                            title: Text("Select form album"),
                          ),
                        ],
                      );
                    });
              },
              child: CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                      "https://i0.wp.com/manforhimself.com/wp-content/uploads/2020/09/leonardo-dicaprio-hairstyle-mens-hair-grooming-MFHC29-man-for-himself.jpg?resize=600%2C600&ssl=1")),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(Icons.person),
              ),
              SizedBox(
                width: 25,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.500),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("User Name"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit),
                          color: Colors.deepOrange,
                        ),
                      ],
                    ),
                    Text(
                        "This is noe your username or pin.This name will be visible to your WhatsApp contants.")
                  ],
                ),
              )
            ],
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(Icons.info_outline),
              ),
              SizedBox(
                width: 25,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("About"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit),
                          color: Colors.deepOrange,
                        ),
                      ],
                    ),
                    Text("Hey there! I am using WhatsApp. ")
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Icon(Icons.call),
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Phone"), Text("User Number")],
              )
            ],
          )
        ],
      ),
    );
  }
}
