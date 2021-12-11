import 'package:flutter/material.dart';
import 'package:sona/List/list.dart';
import 'package:sona/Screen/profile.dart';
import 'Screen/create.dart';
import 'Screen/feed.dart';

class BNB extends StatefulWidget {
  const BNB({ Key? key }) : super(key: key);

  @override
  _BNBState createState() => _BNBState();
}

class _BNBState extends State<BNB> {
  bool isTransparent = false;
  final create = create1; // posts list
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final page = [
    const Feed(),
    const Create(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      body: Center(
        child: page.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Opacity(
        opacity: isTransparent ? 0 : 1,
        child: BottomNavigationBar(items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Explore'),
                BottomNavigationBarItem(icon: Icon(Icons.add_a_photo), label: 'Create'),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
              ],
              backgroundColor: Colors.transparent,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              ),
      ),
    );
  }
}