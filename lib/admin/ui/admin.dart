part of 'uis.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    theme: ThemeData(fontFamily: 'Kanit'),
  ));
}

class Admin extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  int _selectedTabIndex = 0;
  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  Widget build(BuildContext context) {
    final _listPage = <Widget>[HomeAdmin(), AbsenHarian()];

    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.book),
        title: Text('Home Admin'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.book),
        title: Text('Absen Harian'),
      )
    ];

    final _bottomNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.grey,
      onTap: _onNavBarTapped,
    );

    return new Scaffold(
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
      body: Center(child: _listPage[_selectedTabIndex]),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
