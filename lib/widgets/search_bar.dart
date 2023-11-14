import 'package:flutter/material.dart';

class SearchBarWid extends StatelessWidget {
  const SearchBarWid({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 75, left: 25, right: 25),
      child: SearchBar(
        hintText: "Search",
        leading: Icon(Icons.search, color: Colors.grey),
      ),
    );
  }
}
