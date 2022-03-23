import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodistaan_restuarant/screens/menu/menu_widget.dart';

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CupertinoSwitch(value: _switchValue, onChanged: null),
                Text(
                  "Outlet online",
                  style: TextStyle(fontSize: 14, color: Colors.green),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 10),
            height: MediaQuery.of(context).size.height * 0.1,
            child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.search),
                    ),
                    hintText: "Search by order ID",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.amber,
                          width: 2.0,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.amber,
                          width: 2.0,
                        )))),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Category",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "South Indian",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.15,
            child: MenuWidget(
              name: "Masala Dosa",
              image: "dosa.png",
              desc: "Prepared freshly with some basil and Kadi Patta",
              price: 100,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.15,
            child: MenuWidget(
              name: "Masala Dosa",
              image: "dosa.png",
              desc: "Prepared freshly with some basil and Kadi Patta",
              price: 100,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Chinese",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.15,
            child: MenuWidget(
              name: "Momos",
              image: "momos.png",
              desc: "Prepared freshly with some basil and Kadi Patta",
              price: 120,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.15,
            child: MenuWidget(
              name: "Momos",
              image: "momos.png",
              desc: "Prepared freshly with some basil and Kadi Patta",
              price: 120,
            ),
          )
        ],
      ),
    );
  }
}
