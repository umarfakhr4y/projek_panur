part of 'uis.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.teal[200],
            Colors.teal,
          ])),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  "My Profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Kanit",
                    fontSize: displayWidth(context) * 0.07,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: height * 0.4,
                  child: LayoutBuilder(builder: (context, constraints) {
                    double innerHeight = constraints.maxHeight;
                    double innerWidth = constraints.maxWidth;
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        Positioned(
                          left: 10,
                          right: 10,
                          bottom: 0,
                          child: Container(
                            height: innerHeight * 0.60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 100,
                                ),
                                Text(
                                  "User",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: "Kanit"),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Laki Laki',
                                          style: TextStyle(
                                            color: Colors.grey[900],
                                            fontFamily: 'Kanit',
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          'test@gmail.com',
                                          style: TextStyle(
                                            color: Colors.grey[900],
                                            fontFamily: 'Kanit',
                                            fontSize: 15,
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
                        Positioned(
                            right: 0,
                            left: 0,
                            bottom: 0,
                            child: Center(
                              child: Container(
                                height: innerHeight * 1.20,
                                width: innerWidth * 0.40,
                                child: Image.asset(
                                  'assets/img/orang.png',
                                  width: innerWidth * 0.45,
                                  fit: BoxFit.fitWidth,
                                ),
                                // child: Image.asset(
                                //   'assets/img/orang.png',
                                //   width: innerWidth * 0.45,
                                //   fit: BoxFit.fitWidth,
                                // ),
                              ),
                            )),
                      ],
                    );
                  }),
                ),
                SizedBox(
                  height: 25,
                ),
                Positioned(
                    left: 10,
                    right: 10,
                    bottom: 0,
                    child: Center(
                      child: Container(
                        height: height * 0.5,
                        width: width * 0.95,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                      ),
                    )),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

// Scaffold(
//       body: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//             gradient: LinearGradient(begin: Alignment.topCenter, colors: [
//           Colors.teal[200],
//           Colors.teal
//           // Colors.blueAccent
//         ])),
//       ),
//     );
