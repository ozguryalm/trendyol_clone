import 'package:flutter/material.dart';

class MenPage extends StatefulWidget {
  const MenPage({ Key? key }) : super(key: key);

  @override
  State<MenPage> createState() => _MenPageState();
}

class _MenPageState extends State<MenPage> {
  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body:   Center(child: Text("Men Page"),),
    );
  }
}