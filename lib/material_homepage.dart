//Import the Flutter package, used to create the app's UI
import 'package:flutter/material.dart';

//HomePage is a piece of the UI, it is stateful, meaming it can be updated while the app is running
class HomePage extends StatefulWidget {
  //Constructor for HomePage. 'key' parameter used to uniquely identify widgets
  const HomePage({super.key});

  //This method is required for all StatefulWidgets. It creates the state object that will contain all the changeable data for this widget
  @override
  State<HomePage> createState() => _HomePageState();
}

//Contains all the data that can change while the app is running. The underscore '_' means this class is private
class _HomePageState extends State<HomePage> {
  //Keep track of which page is currently selected
  int _selectedIndex = 0;

  //This is a list of the different pages in the app, each page is just centered text right now. static const means this list won't change and is the same for all instances
  static const List<Widget> _pages = <Widget>[
    // Each Center widget puts its child in the middle of the screen
    Center(child: Text('Map Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Report Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Emergency Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Settings Page', style: TextStyle(fontSize: 24))),
  ];

  // This function is called when a navigation button is tapped, it updates which page is shown
  void _onItemTapped(int index) {
    //setState tells Flutter to rebuild the widget with new data
    setState(() {
      //Update the selected page index to the tapped button's index
      _selectedIndex = index;
    });
  }

  //This method builds the actual user interface of the HomePage
  @override
  Widget build(BuildContext context) {
    //Scaffold is a basic page structure with app bar, body, and bottom navigation
    return Scaffold(
      //AppBar is the top bar of the app
      appBar: AppBar(
        //The text shown in the app bar
        title: const Text('Safeguarding App'),
        //Centers the title in the app bar
        centerTitle: true,
      ),
      //The main content of the page
      // hows the page corresponding to the currently selected index
      body: _pages[_selectedIndex],
      //The navigation bar at the bottom of the screen
      bottomNavigationBar: BottomNavigationBar(
        //Allows for 4 or more navigation items
        type: BottomNavigationBarType.fixed,
        //These are the buttons shown in the navigation bar
        items: const <BottomNavigationBarItem>[
          //Each BottomNavigationBarItem has an icon and a label
          BottomNavigationBarItem(icon: Icon(Icons.location_pin), label: 'Map'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Report'),
          BottomNavigationBarItem(
            icon: Icon(Icons.emergency),
            label: 'Emergency',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        //Tell the navigation bar which button is currently selected
        currentIndex: _selectedIndex,
        //This function is called when a navigation button is tapped
        onTap: _onItemTapped,
      ),
    );
  }
}
