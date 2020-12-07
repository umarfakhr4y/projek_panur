part of 'uis.dart';

class DataAbsen extends StatefulWidget {
  @override
  _DataAbsenState createState() => _DataAbsenState();
}

class _DataAbsenState extends State<DataAbsen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                    width: displayWidth(context) * 0.45,
                    height: displayWidth(context) * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.teal, Colors.teal[200]])),
                    margin: EdgeInsets.fromLTRB(
                        displayWidth(context) * 0.037,
                        displayWidth(context) * 0.025,
                        displayWidth(context) * 0.0,
                        displayWidth(context) * 0.025),
                    padding: EdgeInsets.fromLTRB(
                        displayWidth(context) * 0.030,
                        displayWidth(context) * 0.017,
                        displayWidth(context) * 0.030,
                        displayWidth(context) * 0.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Total Absen',
                                  style: TextStyle(
                                    fontSize: displayWidth(context) * 0.06,
                                    fontFamily: "Kanit",
                                    color: Colors.white,
                                    height: 2.0,
                                  )),
                              Text(
                                'Hadir',
                                style: TextStyle(
                                  fontFamily: "Kanit",
                                  color: Colors.white,
                                  fontSize: displayWidth(context) * 0.07,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text("20",
                                    style: TextStyle(
                                      fontFamily: "Kanit",
                                      fontSize: displayWidth(context) * 0.09,
                                      color: Colors.white,
                                      // height: 2.0,
                                    )),
                              ),
                            ],
                          ),
                        ])),
                Container(
                    width: displayWidth(context) * 0.45,
                    height: displayWidth(context) * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.teal, Colors.teal[200]])),
                    margin: EdgeInsets.fromLTRB(
                        displayWidth(context) * 0.025,
                        displayWidth(context) * 0.025,
                        displayWidth(context) * 0.0,
                        displayWidth(context) * 0.025),
                    padding: EdgeInsets.fromLTRB(
                        displayWidth(context) * 0.030,
                        displayWidth(context) * 0.017,
                        displayWidth(context) * 0.030,
                        displayWidth(context) * 0.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Total Absen',
                                  style: TextStyle(
                                    fontSize: displayWidth(context) * 0.06,
                                    fontFamily: "Kanit",
                                    color: Colors.white,
                                    height: 2.0,
                                  )),
                              Text(
                                'Terlambat',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Kanit",
                                  fontSize: displayWidth(context) * 0.06,
                                ),
                              )
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text("5",
                                style: TextStyle(
                                  fontSize: displayWidth(context) * 0.09,
                                  fontFamily: "Kanit",
                                  color: Colors.white,
                                  // height: 2.0,
                                )),
                          ),
                        ])),
              ],
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Card(
                    elevation: 8,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      title: Text(
                        "Senin, 27 September 2020",
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
                              Expanded(child: Text("Absen Hadir : 07:03")),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_right,
                                color: Colors.greenAccent,
                              ),
                              Text('Absen Pulang : 16:30'),
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
                  ),
                  Card(
                    elevation: 8,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      title: Text(
                        "Senin, 27 September 2020",
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
                              Expanded(child: Text("Absen Hadir : 07:03")),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_right,
                                color: Colors.greenAccent,
                              ),
                              Text('Absen Pulang : 16:30'),
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
                  ),
                  Card(
                    elevation: 8,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      title: Text(
                        "Senin, 27 September 2020",
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
                              Expanded(child: Text("Absen Hadir : 07:03")),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_right,
                                color: Colors.greenAccent,
                              ),
                              Text('Absen Pulang : 16:30'),
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
                  ),
                  Card(
                    elevation: 8,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      title: Text(
                        "Senin, 27 September 2020",
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
                              Expanded(child: Text("Absen Hadir : 07:03")),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_right,
                                color: Colors.greenAccent,
                              ),
                              Text('Absen Pulang : 16:30'),
                            ],
                          ),
                        ],
                      ),
                      trailing: Column(
                        children: <Widget>[
                          Icon(
                            Icons.cancel,
                            color: Colors.red,
                          ),
                          Text("Terlambat")
                        ],
                      ),
                      onTap: () {},
                    ),
                  ),
                  Card(
                    elevation: 8,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      title: Text(
                        "Senin, 27 September 2020",
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
                              Expanded(child: Text("Absen Hadir : 07:03")),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_right,
                                color: Colors.greenAccent,
                              ),
                              Text('Absen Pulang : 16:30'),
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
                  ),
                  Card(
                    elevation: 8,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      title: Text(
                        "Senin, 27 September 2020",
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
                              Expanded(child: Text("Absen Hadir : 07:03")),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_right,
                                color: Colors.greenAccent,
                              ),
                              Text('Absen Pulang : 16:30'),
                            ],
                          ),
                        ],
                      ),
                      trailing: Column(
                        children: <Widget>[
                          Icon(
                            Icons.cancel,
                            color: Colors.red,
                          ),
                          Text("Terlambat")
                        ],
                      ),
                      onTap: () {},
                    ),
                  ),
                  Card(
                    elevation: 8,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      title: Text(
                        "Senin, 27 September 2020",
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
                              Expanded(child: Text("Absen Hadir : 07:03")),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_right,
                                color: Colors.greenAccent,
                              ),
                              Text('Absen Pulang : 16:30'),
                            ],
                          ),
                        ],
                      ),
                      trailing: Column(
                        children: <Widget>[
                          Icon(
                            Icons.cancel,
                            color: Colors.red,
                          ),
                          Text("Terlambat")
                        ],
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
