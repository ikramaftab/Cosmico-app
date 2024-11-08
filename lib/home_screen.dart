import 'package:cosmico/earth.dart';
import 'package:cosmico/fav_screen.dart';
import 'package:cosmico/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the appropriate screen based on the index
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => fav_screen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Image.asset(
              'assets/image102x.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Image.asset(
              'assets/Rectangle27.png',
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
            Positioned(
              top: 0,
              width: 680,
              height: 140,
              child: Image.asset('assets/Ellipse36.png'),
            ),
            Positioned(
              top: 40,
              left: 20,
              width: 60,
              height: 60,
              child: InkWell(
                onTap: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                child: Icon(FontAwesomeIcons.bars, color: Colors.white),
              ),
            ),
            Positioned(
              top: 40,
              right: 20,
              width: 60,
              height: 60,
              child: Icon(FontAwesomeIcons.user, color: Colors.white),
            ),
            Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Milky Way',
                      style: TextStyle(color: Color(0xff8D8E99), fontSize: 12),
                    ),
                    Text(
                      'Solar System',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 95,
              height: 150,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset('assets/column1.png'),
                    ),
                    InkWell(
                      child: Image.asset('assets/column2.png'),
                    ),
                    InkWell( onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Earth()));},
                      child: Image.asset('assets/column3.png'),
                    ),
                    InkWell(
                      child: Image.asset('assets/column1.png'),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 190,
              child: Image.asset(
                'assets/image15.png',
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Positioned(
              top: 220,
              left: 50,
              child: Column(


                children: [
                  Text(
                    'Planet Of The DAY',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      Image.asset('assets/planet.png', width: 50, height: 50),
                      SizedBox(width: 10),
                      Text(
                        'Mars',
                        style: TextStyle(fontSize: 16, color: Color(0xff11DCE8)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Mars is the fourth planet from the\nSun and the second-smallest\nplanet in the Solar System, only\nbeing larger than Mercury. In the\nEnglish language, Mars is named\nfor the Roman god of war.',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {},
                    child: Image.asset('assets/more.png'),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(
                'assets/Rectangle24.png',
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Positioned(
              bottom: 75,
              left: 10,
              child: Image.asset('assets/image15.png'),
            ),
            Positioned(
              bottom: 300,
              left: 30,
              child: Text(
                'Solar System',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Positioned(
              bottom: 90,
              left: 50,
              child: Text(
                'The Solar System[c] is the gravitationally bound\nsystem of the Sun and the objects that orbit it. It\nformed 4.6 billion years ago from the gravitational\ncollapse of a giant interstellar molecular cloud.\nThe vast majority (99.86%) of the systems mass\nis in the Sun, with most of the remaining mass\ncontained in the planet Jupiter. The four inner\nsystem planets-Mercury, Venus, Earth and Mars\n-are terrestrial planets, being composed\nprimarily of rock and metal. The four giant planets\nof the outer system are substantially larger and\nmore massive than the terrestrials.',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            Positioned(
              bottom: 0.2, // Adjust as needed to move the bar above the screen edge
              left: 0.2, // Add padding on the left
              right: 0.2, // Add padding on the right
              child: Container(
                height: 74 ,

                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4), // Semi-transparent background
                  borderRadius: BorderRadius.circular(20),
                ),
                child: BottomNavigationBar(
                  backgroundColor: Colors.transparent, // Keep the bar itself transparent
                  elevation: 0, // Remove shadow
                  items: [
                    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourites'),
                    BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'more'),
                  ],
                  currentIndex: _selectedIndex,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.grey,
                  onTap: _onItemTapped,
                ),
              ),


            )
          ],
        ),
      ),
    );
  }
}
