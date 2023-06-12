import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<String> myList = ['Apples', 'Bananas', 'Bread', 'Milk', 'Eggs'];
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My Shopping List',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Cart is empty')));
                },
                icon: Icon(
                  Icons.shopping_cart,
                  size: 26,
                  color: Colors.white,
                ))
          ],
        ),
        body: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListTile(
                contentPadding: EdgeInsets.all(4),
                leading: Icon(
                  Icons.shopping_basket,
                  size: 26,
                  color: Colors.grey,
                ),
                title: Text(myList[index]),
              ),
            );
          },
        ));
  }
}
