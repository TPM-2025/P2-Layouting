import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Homepage"),
        centerTitle: true, // kalau mau titlenya di tengah, kalo ngga hapus aja
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical, // kalo mau ke kanan ganti horizontal
        child: Column(
          // column: tiap item baru bakal nambah ke bawah
          // main axis = vertikal/ke bawah (inget aja karena column nambahnya ke bawah)
          // cross axis = sebaliknya, horizontal/ke samping
          crossAxisAlignment: CrossAxisAlignment
              .center, // berarti dia ke tengah secara horizontal
          // kalo mau ke tengah secara vertikal tinggal tambahin mainAxisAlignment
          children: [
            Image.asset("assets/images/awginc.jpg",
                width: 360 // kalo mau atur tingginya tinggal tambah height
                ),
            Image.network(
                "https://res.cloudinary.com/dk0z4ums3/image/upload/v1661753020/attached_image/inilah-cara-merawat-anak-kucing-yang-tepat.jpg"),
            Row(
              // row: tiap item baru bakal nambah ke kanan
              // main axis = horizontal/ke kanan
              // cross axis = vertikal/ke bawah
              mainAxisAlignment:
                  MainAxisAlignment.center, // ke tengah secara horizontal
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      // kalo tipe button lain tinggal ganti jadi TipeButton.styleFrom
                      padding: EdgeInsets.all(
                          16), // padding kanan kiri atas bawah 16px
                      backgroundColor: Colors
                          .blue.shade400, // bisa pake variabel yg udah ada
                      foregroundColor: Color(
                          0xFFFFFFFF) // bisa custom hex, 4 karakter pertama (0xFF) nunjukin opacitynya (transparan 0x00, full 0xFF)

                      ),
                  onPressed:
                      () {}, // sementara kosongin, tp ini harusnya buat naro fungsi yg bakal dijalanin kalo dia dipencet
                  child: Text("Elevated Button"),
                ),
                SizedBox(width: 8),
                // sized box buat ngasih space antar item, kalo space ke kanan pake width, kalo ke bawah pake height
                OutlinedButton(
                  onPressed: () {},
                  child: Text("Outlined Button"),
                ),
                SizedBox(width: 8),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: Colors.pink.shade400, // warna iconnya
                  ),
                  iconSize: 48,
                )
              ],
            ),
            Container(
              // container ini kaya div aja
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    keyboardType:
                        TextInputType.number, // keyboard otomatis angka saja
                    decoration: InputDecoration(
                      label: Text("Nomor Telepon"), // placeholder
                    ),
                  ),
                  TextField(
                    obscureText: true, // teks disamarkan untuk password
                    decoration: InputDecoration(
                      label: Text("Password"),
                      prefixIcon: Icon(Icons.lock), // icon gembok di kiri
                      suffixIcon:
                          Icon(Icons.remove_red_eye), // icon mata di kanan
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
