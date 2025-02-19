import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatelessWidget {
  const ListViewBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.builder"),
      ),
      body: ListView.builder(
        itemCount: 20, // jumlah item yang akan di-generate
        itemBuilder: (BuildContext context, int index) {
          return Center(
            // pake center biar ke tengah
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text("Item ke ${index + 1}"),
            ),
          ); // nanti akan muncul berjumlah sesuai di itemCount
        },
      ),
    );
  }
}
