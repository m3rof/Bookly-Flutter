
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search your favourite book...',
        fillColor: Color(0xff8d8e91),
        filled: true,
        suffixIcon: Icon(Icons.search_outlined),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10)
      ),
    );
  }
}
