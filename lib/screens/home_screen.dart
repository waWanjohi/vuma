import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/widgets/category_selector.dart';
// import 'package:flutter_chat_ui/widgets/favorite_contacts.dart';
import 'package:flutter_chat_ui/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColor,
      backgroundColor: Colors.black12,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          // color: Colors.black12,
          onPressed: () {},
        ),
        title: Text(
          'Vuma',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            // color: Colors.black12,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                // color: Theme.of(context).accentColor,
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  RecentChats(),
                  // FavoriteContacts(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
