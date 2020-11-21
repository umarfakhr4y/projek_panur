part of 'uis.dart';

class DataSingleAbsen extends StatefulWidget {
  final String id;

  DataSingleAbsen({this.id});

  @override
  _DataSingleAbsenState createState() => _DataSingleAbsenState();
}

class _DataSingleAbsenState extends State<DataSingleAbsen> {
  Map<String, dynamic> singleKaryawan;
  // List singleKaryawan = List();

  void dataSingleKaryawan() {
    getSingleDataKaryawan(widget.id).then((value) {
      setState(() {
        singleKaryawan = value;
        // List<dynamic> data = singleKaryawan["name"];
      });
    });
  }

  @override
  void initState() {
    super.initState();
    dataSingleKaryawan();
  }

  Widget build(BuildContext context) {
    // TODO: implement build

    Widget getListView() {
      return singleKaryawan['absen_masuk'].isNotEmpty
          ? ListView.builder(
              itemCount: singleKaryawan['absen_masuk'].length,
              itemBuilder: (context, i) {
                var data = singleKaryawan["absen_masuk"][i];
                return Card(
                  elevation: 8,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    title: Text(
                      data['tanggal'].toString(),
                      // singleKaryawan['absen_masuk'][0].tanggal.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.arrow_right,
                              color: Colors.greenAccent,
                            ),
                            Expanded(
                                child: Text("Absen Hadir : " +
                                    singleKaryawan['absen_masuk'][i]
                                            ['jam_masuk']
                                        .toString())),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.arrow_right,
                              color: Colors.greenAccent,
                            ),
                            Text('Absen Pulang : ' +
                                singleKaryawan['absen_masuk'][0]['jam_pulang']
                                    .toString()),
                          ],
                        ),
                      ],
                    ),
                    trailing: Column(
                      children: <Widget>[
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text("Tepat Waktu")
                      ],
                    ),
                    onTap: () {},
                  ),
                );
              },
            )
          : Card(
                  elevation: 8,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    title: Text(
                      "Data Tidak Tersedia",
                      // singleKaryawan['absen_masuk'][0].tanggal.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    
                    
                    onTap: () {},
                  ),
                );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 7,
        backgroundColor: Colors.teal[500],
        title: Text("Aplikasi Absensi"),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Icon(
                  Icons.replay,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: singleKaryawan == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              child: getListView(),
            ),

// Container(
      //     child: Column(
      //       children: <Widget>[
      //         Card(
      //           elevation: 8,
      //           margin:
      //               const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      //           child: ListTile(
      //             contentPadding:
      //                 EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //             title: Text(
      //               singleKaryawan['absen_masuk'][0]['tanggal'].toString(),
      //               style: TextStyle(fontWeight: FontWeight.bold),
      //             ),
      //             subtitle: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: <Widget>[
      //                 Row(
      //                   children: <Widget>[
      //                     Icon(
      //                       Icons.arrow_right,
      //                       color: Colors.greenAccent,
      //                     ),
      //                     Expanded(
      //                         child: Text("Absen Hadir : " +
      //                             singleKaryawan['absen_masuk'][1]
      //                                     ['jam_masuk']
      //                                 .toString())),
      //                   ],
      //                 ),
      //                 Row(
      //                   children: <Widget>[
      //                     Icon(
      //                       Icons.arrow_right,
      //                       color: Colors.greenAccent,
      //                     ),
      //                     Text('Absen Pulang : ' +
      //                         singleKaryawan['absen_masuk'][0]['jam_pulang']
      //                             .toString()),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //             trailing: Column(
      //               children: <Widget>[
      //                 Icon(
      //                   Icons.check,
      //                   color: Colors.green,
      //                 ),
      //                 Text("Tepat Waktu")
      //               ],
      //             ),
      //             onTap: () {},
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
    );
  }
}