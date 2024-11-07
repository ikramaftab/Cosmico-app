import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class demo_home extends StatefulWidget {
  const demo_home({super.key});

  @override
  State<demo_home> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<demo_home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Drawer Header', style: TextStyle(color: Colors.white)),
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
            // Background image
            Image.asset(
              'assets/image102x.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            // Semi-transparent overlay
            Image.asset(
              'assets/Rectangle27.png',
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
            // Top decorative ellipse
            Positioned(
              top: 0,
              width: 680,
              height: 140,
              child: Image.asset('assets/Ellipse36.png'),
            ),
            // Menu icon
            Positioned(
              top: 40,
              left: 20,
              child: InkWell(
                onTap: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                child: Icon(FontAwesomeIcons.bars, color: Colors.white, size: 30),
              ),
            ),
            // Profile icon
            Positioned(
              top: 40,
              right: 20,
              child: Icon(FontAwesomeIcons.user, color: Colors.white, size: 30),
            ),
            // Center title
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
                      style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            // Horizontal scroll view of planets
            Positioned(
              top: 95,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (String asset in ['assets/column1.png', 'assets/column2.png', 'assets/column3.png'])
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: InkWell(
                          onTap: () {
                            // Add your navigation logic here
                          },
                          child: Image.asset(asset, width: 100, height: 100),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            // Planet of the day section
            Positioned(
              top: 220,
              left: 20,
              right: 20,
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Planet Of The DAY',
                      style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Image.asset('assets/planet.png', width: 50, height: 50),
                        SizedBox(width: 10),
                        Text(
                          'Mars',
                          style: TextStyle(fontSize: 18, color: Color(0xff11DCE8), fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Mars is the fourth planet from the Sun and the second-smallest '
                          'planet in the Solar System, only being larger than Mercury. In the '
                          'English language, Mars is named for the Roman god of war.',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          // Add "Details" navigation logic
                        },
                        child: Image.asset('assets/more.png', width: 50),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Footer section
            Positioned(
              bottom: 100,
              left: 20,
              right: 20,
              child: Container(
                padding: EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Solar System',
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'The Solar System[c] is the gravitationally bound system of the Sun and the objects that orbit it. '
                          'It formed 4.6 billion years ago from the gravitational collapse of a giant interstellar molecular cloud. '
                          'The vast majority (99.86%) of the system\'s mass is in the Sun, with most of the remaining mass contained '
                          'in the planet Jupiter. The four inner system planets — Mercury, Venus, Earth, and Mars — are terrestrial '
                          'planets, being composed primarily of rock and metal. The four giant planets of the outer system are '
                          'substantially larger and more massive than the terrestrials.',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            // Footer navigation icons
            Positioned(
              bottom: 10,
              left: 50,
              right: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset('assets/Frame2.png', width: 40),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset('assets/Frame3.png', width: 40),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset('assets/Frame3(1).png', width: 40),
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
