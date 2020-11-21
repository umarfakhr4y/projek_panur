part of 'uis.dart';

class AbsenHarian extends StatefulWidget {
  @override
  _AbsenHarianState createState() => _AbsenHarianState();
}

class _AbsenHarianState extends State<AbsenHarian> {
  // List<String> absenmasuk;

  // final amount = TextEditingController();
  // AllKaryawan allKaryawan;
  List allKarwayan;

  void dataKaryawan() {
    getAllKaryawan().then((value) {
      setState(() {
        allKarwayan = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    dataKaryawan();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: allKarwayan == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Colors.teal[200],
                Colors.teal
                // Colors.blueAccent
              ])),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: displayHeight(context) * 0.09),
                    Padding(
                      padding: EdgeInsets.all(displayWidth(context) * 0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Daftar Karyawan',
                              style: TextStyle(
                                // fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: displayWidth(context) * 0.09,
                              )),
                          SizedBox(height: displayHeight(context) * 0.02),
                          Text(
                              'Silahkan Tap Nama Karyawan Untuk Melihat Lebih Detail',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Varela',
                                  fontSize: displayWidth(context) * 0.040))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.12,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: allKarwayan.length,
                        itemBuilder: (context, i) {
                          return Card(
                            elevation: 8,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              title: Text(
                                allKarwayan[i].name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.green,
                                  ),
                                  Text("Lebih Detail")
                                ],
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return DataSingleAbsen(
                                      id: allKarwayan[i].id.toString());
                                }));
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ]),
            ),
    );
  }
}
