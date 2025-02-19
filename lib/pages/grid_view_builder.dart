import 'package:flutter/material.dart';

class GridViewBuilderPage extends StatelessWidget {
  const GridViewBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView.builder"),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 20, // jumlah item yang akan di-generate
        itemBuilder: (BuildContext context, int index) {
          return Center(
            // pake center biar ke tengah
            child: Text("Item ke ${index + 1}"),
          ); // nanti akan muncul berjumlah sesuai di itemCount
        },
      ),
    );
  }
}
