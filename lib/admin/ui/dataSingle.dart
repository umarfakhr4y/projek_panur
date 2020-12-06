part of 'uis.dart';

class DataSingleAbsen extends StatefulWidget {
  final String id;

  DataSingleAbsen({this.id});

  @override
  _DataSingleAbsenState createState() => _DataSingleAbsenState();
}

class _DataSingleAbsenState extends State<DataSingleAbsen> {
  Map<String, dynamic> singleKaryawan;
  DateTime todayDate;
  // TimeOfDay waktuStatus = TimeOfDay(hour: 7, minute: 0);

  // List singleKaryawan = List();

  void dataSingleKaryawan() {
    getSingleDataKaryawan(widget.id).then((value) {
      setState(() {
        singleKaryawan = value;
        // List<dynamic> data = singleKaryawan["name"];
      });
    });
  }

  void hapusKaryawan(String id) async {
    print(id);
    var hapus = await deleteKaryawan(id);

    if (hapus == true) {
      AlertDialog alertDialog = AlertDialog(
        content: Container(
          height: 100.0,
          child: Column(
            children: [
              Text("Karyawan Berhasil Dihapus!"),
              RaisedButton(
                child: Text("OK"),
                onPressed: () => Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Admin()),
                  (Route<dynamic> route) => false,
                ),
              ),
            ],
          ),
        ),
      );
      showDialog(context: context, child: alertDialog);
    } else {
      AlertDialog alertDialog = AlertDialog(
        content: Container(
          height: 100.0,
          child: Column(
            children: [
              Text("Karyawan gagal Dihapus"),
              RaisedButton(
                child: Text("OK"),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
        ),
      );
      showDialog(context: context, child: alertDialog);
    }
  }

  // void convertDateFromString(String strDate) {
  //   todayDate = DateTime.parse(strDate);
  //   print(todayDate);
  //   print(formatDate(todayDate, [hh, ':', nn, ':', ss, ' ', am]));
  // }

  @override
  void initState() {
    super.initState();
    dataSingleKaryawan();
  }

  Widget build(BuildContext context) {
    // TODO: implement build

    Widget absenStatusTerlambat() {
      return Column(
        children: <Widget>[
          Icon(
            Icons.watch,
            color: Colors.red,
          ),
          Text("Terlambat")
        ],
      );
    }

    Widget absenStatusHadir() {
      return Column(
        children: <Widget>[
          Icon(
            Icons.watch_later,
            color: Colors.green,
          ),
          Text("Tepat Waktu")
        ],
      );
    }

    Widget getListView() {
      return singleKaryawan['absen_masuk'].isNotEmpty
          ? Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                      left: displayWidth(context) * 0.04,
                      top: displayWidth(context) * 0.07,
                      bottom: displayWidth(context) * 0.07,
                      right: displayWidth(context) * 0.10),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.teal[400],
                      borderRadius:
                          BorderRadius.circular(displayWidth(context) * 0.07)),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_right,
                                  color: Colors.greenAccent,
                                  size: displayWidth(context) * 0.07,
                                ),
                                Expanded(
                                    child: Text(
                                  "Nama Karyawan : " + singleKaryawan['name'],
                                  style: TextStyle(
                                    fontSize: displayWidth(context) * 0.035,
                                  ),
                                )),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_right,
                                  color: Colors.greenAccent,
                                  size: displayWidth(context) * 0.07,
                                ),
                                Text(
                                  "Email Karyawan : " + singleKaryawan['email'],
                                  style: TextStyle(
                                    fontSize: displayWidth(context) * 0.035,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: displayWidth(context) * 0.02,
                      ),
                      Text(
                        "Data Absen Harian Karyawan",
                        style: TextStyle(
                            fontSize: displayWidth(context) * 0.03,
                            color: Colors.black),
                      ),
                      Expanded(
                          child: ListView.builder(
                        itemCount: singleKaryawan['absen_masuk'].length,
                        itemBuilder: (context, i) {
                          var data = singleKaryawan["absen_masuk"][i];
                          return Card(
                            elevation: 8,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
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
                                          singleKaryawan['absen_masuk'][0]
                                                  ['jam_pulang']
                                              .toString()),
                                    ],
                                  ),
                                ],
                              ),
                              // trailing: Container(
                              //   child: singleKaryawan['absen_masuk'][i]['jam_masuk'] >=
                              //           todayDate
                              //       ? absenStatusTerlambat()
                              //       : absenStatusHadir(),
                              // ),
                              onTap: () {},
                            ),
                          );
                        },
                      ))
                    ],
                  ),
                ),
                RaisedButton.icon(
                    color: Colors.red,
                    onPressed: () {
                      hapusKaryawan(singleKaryawan['id'].toString());
                      print('hapusdipencet');
                    },
                    icon: Icon(Icons.delete),
                    label: Text('Delete Karyawan')),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(
                  elevation: 8,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: 'Data Tidak Tersedia untuk Karyawan ',
                            style: TextStyle(
                                color: Colors.red[300],
                                fontWeight: FontWeight.bold,
                                fontSize: displayWidth(context) * 0.04),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "'" + singleKaryawan['name'] + "'",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: displayWidth(context) * 0.04,
                                      color: Colors.teal)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: displayHeight(context) * 0.02,
                        ),
                        Text(
                          "Mungkin User Belum Pernah Melakukan Absen Harian",
                          style: TextStyle(
                              fontSize: displayWidth(context) * 0.025),
                        )
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
                RaisedButton.icon(
                    color: Colors.red,
                    onPressed: () {
                      hapusKaryawan(singleKaryawan['id'].toString());
                      print('hapusdipencet');
                    },
                    icon: Icon(Icons.delete),
                    label: Text('Delete Karyawan')),
              ],
            );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 7,
        backgroundColor: Colors.teal[500],
        title: Text("Data Detail Karyawan"),
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
    );
  }
}
