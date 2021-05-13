import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SHUSHI VILLAGE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
      ),
      themeMode: ThemeMode.dark,
      home: MyHomePage(title: 'SUSHI VILLAGE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final nothingSnackBar = SnackBar(
    backgroundColor: Color(0xff2c2c2c),
    elevation: 8,
    content: Row(
      children: [
        Icon(
          Icons.done,
          color: Colors.green.shade200,
        ),
        SizedBox(width: 10),
        Text(
          "Does Nothing",
          style: TextStyle(color: Colors.white),
        )
      ],
    ),
    action: SnackBarAction(
      label: 'OKAY',
      onPressed: () {},
      textColor: Colors.green.shade200,
    ),
  );

  List<List> fakeContent = [
    [Icon(Icons.keyboard), "Wasabi Licked", "200"],
    [Icon(Icons.alarm_add_outlined), "Sashimi Sold", "244"],
    [Icon(Icons.wallet_giftcard_sharp), "Udon Gulped", "336"],
    [Icon(Icons.browser_not_supported), "Tempura Stolen", "522"],
    [Icon(Icons.cached_outlined), "Momotaro Hours", "324"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  color: Colors.white,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(nothingSnackBar);
                  },
                ),
                Expanded(child: Container()),
                Text("SUSHI VILLAGE",
                    style: GoogleFonts.ptSans(
                      fontSize: 20,
                    )),
                Expanded(child: Container()),
                Icon(Icons.info_outline),
                SizedBox(width: 8)
              ],
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [Colors.green.shade400, Colors.blue])),
                    height: 155,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 22,
                          top: 22,
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: NetworkImage(
                                'https://i.pinimg.com/474x/50/70/10/5070101ae7cc267a1ba03d30abdd38e9.jpg'),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        Positioned(
                          right: 22,
                          top: 56,
                          child: Text(
                            "Mio Akiyama",
                            style: GoogleFonts.ptSans(fontSize: 32),
                          ),
                        ),
                        Positioned(
                            top: 96,
                            right: 22,
                            child: Text(
                              "GOLD MEMBER",
                              style: GoogleFonts.ptSans(
                                  fontSize: 18, fontStyle: FontStyle.italic),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(left: 16, bottom: 16, right: 16),
                width: double.infinity,
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 6);
                  },
                  itemCount: fakeContent.length + 2,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                                colors: [Colors.green.shade400, Colors.blue])),
                        height: 126,
                        child: Stack(
                          children: [
                            Container(
                              height: 120,
                              width: double.infinity,
                              margin: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Color(0xff2a2a2a),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(24),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 32,
                              top: 28,
                              child: Text(
                                "\$ 112.50",
                                style: GoogleFonts.ptSans(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                ),
                              ),
                            ),
                            Positioned(
                                left: 32,
                                top: 64,
                                child: Text(
                                  "Poke Dollars",
                                  style: GoogleFonts.ptSans(fontSize: 18),
                                )),
                            Positioned(
                                right: 32,
                                top: 34,
                                child: Row(
                                  children: [
                                    Text(
                                      "Claim Daily",
                                      style: GoogleFonts.ptSans(
                                          fontSize: 18,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    SizedBox(width: 2),
                                    Icon(Icons.arrow_right_alt_outlined)
                                  ],
                                )),
                            Positioned(
                                right: 32,
                                bottom: 24,
                                child: Text(
                                  "BUY MORE",
                                  style: GoogleFonts.ptSans(
                                      fontSize: 20,
                                      color: Colors.green.shade200),
                                ))
                          ],
                        ),
                      );
                    }
                    if (index > fakeContent.length) {
                      return Container(width: double.infinity, height: 60);
                    }
                    return ContentCard(
                      leading: fakeContent.elementAt(index - 1).elementAt(0),
                      keyName: fakeContent.elementAt(index - 1).elementAt(1),
                      value: fakeContent.elementAt(index - 1).elementAt(2),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade200,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(nothingSnackBar);
        },
        tooltip: 'EDIT',
        child: Icon(Icons.edit),
      ),
    );
  }
}

class ContentCard extends StatelessWidget {
  final Icon leading;
  final String keyName;
  final String value;
  ContentCard({this.leading, this.keyName, this.value});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff2a2a2a),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      elevation: 2,
      child: Container(
        padding: EdgeInsets.all(16),
        height: 70,
        child: Row(
          children: [
            leading,
            SizedBox(width: 14),
            Text(
              keyName,
              style: GoogleFonts.ptSans(fontSize: 18),
            ),
            Expanded(child: Container()),
            Text(
              value,
              style: GoogleFonts.ptSans(fontSize: 18),
            ),
            SizedBox(width: 4)
          ],
        ),
      ),
    );
  }
}
