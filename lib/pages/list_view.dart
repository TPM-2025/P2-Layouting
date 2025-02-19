import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(
        scrollDirection:
            Axis.horizontal, // kalo mau ke bawah arah scrollnya, tinggal hapus
        children: [
          Image.asset("assets/images/awginc.jpg"),
          Image.asset("assets/images/awginc.jpg"),
          Image.asset("assets/images/awginc.jpg"),
          Image.asset("assets/images/awginc.jpg"),
          Image.asset("assets/images/awginc.jpg"),
          Image.asset("assets/images/awginc.jpg"),
          Image.asset("assets/images/awginc.jpg"),
          Image.asset("assets/images/awginc.jpg"),
          Image.asset("assets/images/awginc.jpg"),
          Image.asset("assets/images/awginc.jpg"),
        ],
      ),
    );
  }
}
