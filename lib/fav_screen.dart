import 'package:cosmico/demo_home.dart';
import 'package:cosmico/earth.dart';
import 'package:cosmico/home_screen.dart';
import 'package:cosmico/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class fav_screen extends StatefulWidget {
  const fav_screen({super.key});

  @override
  State<fav_screen> createState() => _fav_screenState();
}

class _fav_screenState extends State<fav_screen> {

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
    return  SafeArea(child: Scaffold(
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

      body: Stack(children: [
        Image.asset(
          'assets/Favbackground.png',
          fit: BoxFit.cover,
          height: double.infinity,
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
        Container(
          height: 128,
          width: 400,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.black.withOpacity(0.3)),),
        SafeArea(
          child: ListView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16),
            children: [
              SizedBox(height: 160), // Space for AppBar
              PlanetCard(
                assetname: 'assets/mercury.png',
                planetName: "Mercury",
                description:
                "Mercury is the smallest planet in the Solar System and the closest to the Sun.",
              ),
              PlanetCard(
                assetname: 'assets/venus.png',
                planetName: "Venus",
                description:
                "Venus is the second planet from the Sun and is Earth's closest planetary neighbor.",
              ),
              PlanetCard(
                assetname: 'assets/earth2.png',
                planetName: "Earth",
                description:
                "Earth is an ellipsoid with a circumference of about 40,000 km. It is the densest planet in the Solar System.",
              ),
              PlanetCard(
                assetname: 'assets/mars.png',
                planetName: "Mars",
                description:
                "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System.",
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0.2,
          left: 0.2,
          right: 0.2,
          child: Container(
            height: 74,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(20),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourites'),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              onTap: _onItemTapped,
            ),
          ),
        )
      ],),


    ));

  }
}


// Card widget for each planet
class PlanetCard extends StatelessWidget {
  final String planetName;
  final String description;
  final String assetname;

  PlanetCard({required this.planetName, required this.description , required this.assetname});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 70, // Set to match CircleAvatar's diameter
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.asset(
                assetname, // Replace with your image path
                fit: BoxFit.cover,   // Ensures the image covers the entire circle
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  planetName,
                  style: TextStyle(
                    color: Color(0xff00d8ff),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Details",
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 14,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.grey[300],
                      size: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }
}
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text('Home Screen')),
//     );
//   }
// }
//
// class FavouritesScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text('Favourites Screen')),
//     );
//   }
// }
//
// class SettingsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text('Settings Screen')),
//     );
//   }
// }
