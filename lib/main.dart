import 'package:flutter/material.dart';

void main() {
  runApp(MyShoppingListApp());
}

class MyShoppingListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyShoppingListPage(),
    );
  }
}

class MyShoppingListPage extends StatelessWidget {
  MySnackbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Shopping List')),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Cart is empty')),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Apples'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Bananas'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Milk'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Bread'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Eggs'),
          ),
        ],
      ),
    );
  }
}
