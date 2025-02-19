import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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
