import 'package:flutter/material.dart';
import 'package:prroduct_api_flutter/screen/camrera_gallary.dart';

class NewUiProfile extends StatefulWidget {
  const NewUiProfile({super.key});

  @override
  State<NewUiProfile> createState() => _NewUiProfileState();
}

class _NewUiProfileState extends State<NewUiProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.deepOrange,
        elevation: 0,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (context) {
                      return Wrap(
                        children: [
                          ListTile(
                            // onTap: () => getImage(), n
                            leading: Icon(Icons.camera),
                            title: Text("Take a Photo"),
                          ),
                          ListTile(
                            leading: Icon(Icons.album),
                            title: Text("Select from album"),
                          ),
                          ListTile(
                            leading: Icon(Icons.cancel),
                            title: Text("Cancel"),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://wl-brightside.cf.tsp.li/resize/728x/jpg/9b6/b68/6c70db5f149b4ec6952c412c16.jpg"),
                  radius: 45,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Customer Name"), Text("Customer Number")],
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                child: Text(
                  "Edit Profile",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              InkWell(
                child: Container(
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "My Order",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "My Favourites",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              InkWell(
                child: Container(
                  child: Icon(
                    Icons.keyboard_return_outlined,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "My Return",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              InkWell(
                child: Container(
                  child: Icon(
                    Icons.currency_exchange_sharp,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "My Exchange",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              InkWell(
                child: Container(
                  child: Icon(
                    Icons.feedback,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Feedback",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold),
              ),
              Divider(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              InkWell(
                child: Container(
                  child: Icon(
                    Icons.book,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Terms and Conditions",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold),
              ),
              Divider(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              InkWell(
                child: Container(
                  child: Icon(
                    Icons.logout_outlined,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Logout",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Divider(),
      ]),
    );
  }
}
