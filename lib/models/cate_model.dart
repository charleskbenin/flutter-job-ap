import 'package:flutter/material.dart';
import 'package:testapp/screens/homePage.dart';

List category = [
  {'image': 'images/save-water.png', 'title': 'Plumber'},
  {'image': 'images/lightning.png', 'title': 'Electrician'},
  {'image': 'images/carpenter.png', 'title': 'Carpenter'},
  {'image': 'images/hair-washing.png', 'title': 'Hair Dresser'},
  {'image': 'images/save-water.png', 'title': 'Plumber'}
];

List users = [
  {
    'names': 'Selorm Akuvi',
    'job': 'Plumber',
    'location': 'Ofankor',
    'image': 'images/plumber.jpg'
  },
  {
    'names': 'Diana Afful',
    'job': 'Painter',
    'location': 'Dansoman',
    'image': 'images/painter.jpeg'
  },
  {
    'names': 'Selorm Akuvi',
    'job': 'Plumber',
    'location': 'Ofankor',
    'image': 'images/plumber.jpg'
  },
  {
    'names': 'Diana Afful',
    'job': 'Painter',
    'location': 'Dansoman',
    'image': 'images/painter.jpeg'
  },
  {
    'names': 'Selorm Akuvi',
    'job': 'Plumber',
    'location': 'Ofankor',
    'image': 'images/plumber.jpg'
  },
  {
    'names': 'Diana Afful',
    'job': 'Painter',
    'location': 'Dansoman',
    'image': 'images/painter.jpeg'
  }
];

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  List pages = [
    HomePage(),
    Text('hu'),
    Text('hey')
  ];

  ontap(int selectedItem) {
    setState(() {
      currentIndex = selectedItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: pages.length,
        child: Scaffold(
          body: pages[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xff005682),
            currentIndex: currentIndex,
            iconSize: 30,
            onTap: ontap,
            unselectedItemColor: Color(0xff999FBF),
            selectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                label: 'Home'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Notifications'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile'
              )
            ],
          ),
        ));
  }
}
