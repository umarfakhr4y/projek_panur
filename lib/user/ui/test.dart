import 'package:flutter/material.dart';

void main() {
  runApp(AplikasiKu());
}

class AplikasiKu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ensiklpedi Hadits'),
          backgroundColor: Colors.green,
        ),
        body: ListView(children: <Widget>[
          //bagian1
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Terakhir Dibaca',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text('more', style: TextStyle(fontSize: 30)),
          ]),

          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.grey, Colors.white, Colors.white])),
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.blueAccent, Colors.greenAccent])),
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              '"Barang siapa yag menceritakan hadist dariku, yang mana riwayat itu di duga"',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "serif",
                                  color: Colors.black,
                                  height: 2.0,
                                  fontWeight: FontWeight.bold)),
                        ])),
                Container(
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.blue, Colors.red])),
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              '"Barang siapa yag menceritakan hadist dariku, yang mana riwayat itu di duga"',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "serif",
                                  color: Colors.black,
                                  height: 2.0,
                                  fontWeight: FontWeight.bold)),
                        ])),
                Container(
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.blueAccent, Colors.greenAccent])),
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              '"Barang siapa yag menceritakan hadist dariku, yang mana riwayat itu di duga"',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "serif",
                                  color: Colors.black,
                                  height: 2.0,
                                  fontWeight: FontWeight.bold)),
                        ])),
              ],
            ),
          ),
          //bagian2
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("kutubut Tis'ah",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text('more', style: TextStyle(fontSize: 30)),
          ]),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.grey, Colors.white, Colors.white])),
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 100,
                  child: Card(
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          'https://cf.shopee.co.id/file/6a44bfb5f0d61dd6ac57b495c54f0dc3',
                          height: 100,
                          width: 75,
                        ),
                        ListTile(
                          title: Text("apa ya?"),
                          subtitle: Text("ini apa??"),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  child: Card(
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          'https://id-test-11.slatic.net/p/674f9e7c4cb143abe0569257f9247df0.jpg',
                          height: 100,
                          width: 75,
                        ),
                        ListTile(
                          title: Text("apa ya?"),
                          subtitle: Text("ini apa??"),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  child: Card(
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          'https://cf.shopee.co.id/file/6a44bfb5f0d61dd6ac57b495c54f0dc3',
                          height: 100,
                          width: 75,
                        ),
                        ListTile(
                          title: Text("apa ya?"),
                          subtitle: Text("ini apa??"),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width:100,
                  child: Card(
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          'https://cf.shopee.co.id/file/6a44bfb5f0d61dd6ac57b495c54f0dc3',
                          height: 100,
                          width: 75,
                        ),
                        ListTile(
                          title: Text("apa ya?"),
                          subtitle: Text("ini apa??"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //bagiian3
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Hadist apa lah...',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text('more', style: TextStyle(fontSize: 30)),
          ]),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.grey, Colors.white, Colors.white])),
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.blueAccent, Colors.greenAccent])),
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              '"Barang siapa yag menceritakan hadist dariku, yang mana riwayat itu di duga"',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "serif",
                                  color: Colors.black,
                                  height: 2.0,
                                  fontWeight: FontWeight.bold)),
                        ])),
                Container(
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.blue, Colors.red])),
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              '"Barang siapa yag menceritakan hadist dariku, yang mana riwayat itu di duga"',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "serif",
                                  color: Colors.black,
                                  height: 2.0,
                                  fontWeight: FontWeight.bold)),
                        ])),
                Container(
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.blueAccent, Colors.greenAccent])),
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              '"Barang siapa yag menceritakan hadist dariku, yang mana riwayat itu di duga"',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "serif",
                                  color: Colors.black,
                                  height: 2.0,
                                  fontWeight: FontWeight.bold)),
                        ])),
              ],
            ),
          ),
          //bagian3
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('telah terbaca',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text('more', style: TextStyle(fontSize: 30)),
          ]),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.grey, Colors.white, Colors.white])),
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 100,
                  child: Card(
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          'https://cf.shopee.co.id/file/6a44bfb5f0d61dd6ac57b495c54f0dc3',
                          height: 100,
                          width: 75,
                        ),
                       ListTile(
                          title: Text("apa ya?"),
                          subtitle: Text("ini apa??"),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  child: Card(
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          'https://id-test-11.slatic.net/p/674f9e7c4cb143abe0569257f9247df0.jpg',
                          height: 100,
                          width: 75,
                        ),
                        ListTile(
                          title: Text("apa ya?"),
                          subtitle: Text("ini apa??"),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  child: Card(
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          'https://cf.shopee.co.id/file/6a44bfb5f0d61dd6ac57b495c54f0dc3',
                          height: 100,
                          width: 75,
                        ),
                        ListTile(
                          title: Text("apa ya?"),
                          subtitle: Text("ini apa??"),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  child: Card(
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          'https://cf.shopee.co.id/file/6a44bfb5f0d61dd6ac57b495c54f0dc3',
                          height: 100,
                          width: 75,
                        ),
                        ListTile(
                          title: Text("apa ya?"),
                          subtitle: Text("ini apa??"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //bagian4
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('telah terbaca',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text('more', style: TextStyle(fontSize: 30)),
          ]),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.grey, Colors.white, Colors.white])),
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 100,
                  child: Card(
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          'https://cf.shopee.co.id/file/6a44bfb5f0d61dd6ac57b495c54f0dc3',
                          height: 100,
                          width: 75,
                        ),
                        ListTile(
                          title: Text("apa ya?"),
                          subtitle: Text("ini apa??"),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  child: Card(
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          'https://id-test-11.slatic.net/p/674f9e7c4cb143abe0569257f9247df0.jpg',
                          height: 100,
                          width: 75,
                        ),
                        ListTile(
                          title: Text("apa ya?"),
                          subtitle: Text("ini apa??"),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  child: Card(
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          'https://cf.shopee.co.id/file/6a44bfb5f0d61dd6ac57b495c54f0dc3',
                          height: 100,
                          width: 75,
                        ),
                        ListTile(
                          title: Text("apa ya?"),
                          subtitle: Text("ini apa??"),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  child: Card(
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          'https://cf.shopee.co.id/file/6a44bfb5f0d61dd6ac57b495c54f0dc3',
                          height: 100,
                          width: 75,
                        ),
                        ListTile(
                          title: Text("apa ya?"),
                          subtitle: Text("ini apa??"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
         ]
	),
      ),
    );
  }
}
