import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var _selectedIndex = 0;

  void _onTabClicked(index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 85,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        clipBehavior: Clip.hardEdge,
        child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (index){
              _onTabClicked(index);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled,size: 30,color: Colors.black87,), label: "Home",),
              BottomNavigationBarItem(icon: Icon(Icons.my_library_music,size: 30,color: Colors.black87), label: "library"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite,size: 30,color: Colors.black87), label: "favorite"),
              BottomNavigationBarItem(icon: Icon(Icons.person,size: 30,color: Colors.black87), label: "profile")
            ]),
      ),
    );
  }
}
