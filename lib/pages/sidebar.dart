import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black87,
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(
              MediaQuery.of(context).size.width * 0.05,
            ),
            child: Icon(
              Icons.apple,
              color: Colors.white,
            ),
          ),
          Divider(
            color: Colors.white38,
            height: 1,
          ),
          ListTile(
            title: Text(
              'Shop',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(
            color: Colors.white38,
            height: 1,
          ),
          ListTile(
            title: Text(
              'Mac',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(
            color: Colors.white38,
            height: 1,
          ),
          ListTile(
            title: Text(
              'IPad',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(
            color: Colors.white38,
            height: 1,
          ),
          ListTile(
            title: Text(
              'Iphone',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(
            color: Colors.white38,
            height: 1,
          ),
          ListTile(
            title: Text(
              'Watch',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(
            color: Colors.white38,
            height: 1,
          ),
          ListTile(
            title: Text(
              'AirPods',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(
            color: Colors.white38,
            height: 1,
          ),
          ListTile(
            title: Text(
              'TV and Home',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(
            color: Colors.white38,
            height: 1,
          ),
          ListTile(
            title: Text(
              'only in Apple',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(
            color: Colors.white38,
            height: 1,
          ),
          ListTile(
            title: Text(
              'Accessories',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(
            color: Colors.white38,
            height: 1,
          ),
          ListTile(
            title: Text(
              'Support',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
