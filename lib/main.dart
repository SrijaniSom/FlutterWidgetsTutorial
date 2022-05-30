import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> fruits = ['Apple', 'Banana', 'Mango', 'Orange'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.mail_lock_sharp,
          ),
          color: Colors.amber,
        ),
        color: Colors.black,
        padding: EdgeInsets.all(10.2),
        margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
      ),
      floatingActionButton: FloatingActionButton(
          child: Text('click'),
          onPressed: () {
            final snackBar = SnackBar(
                content: Text('This is the snackbar',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    )),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {},
                  textColor: Colors.blue,
                ),
                behavior: SnackBarBehavior.floating,
                duration: const Duration(milliseconds: 3000));

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          backgroundColor: Colors.red[600]),
    );
  }
}
