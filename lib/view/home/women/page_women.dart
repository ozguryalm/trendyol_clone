import 'package:flutter/material.dart';

class WomenPage extends StatefulWidget {
  const WomenPage({ Key? key }) : super(key: key);

  @override
  State<WomenPage> createState() => _WomenPageState();
}

class _WomenPageState extends State<WomenPage> {
  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body:   Center(child: Text("Women Page"),),
    );
  }
}