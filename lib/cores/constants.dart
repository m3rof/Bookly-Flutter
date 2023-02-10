
import 'package:flutter/material.dart';

const primaryColor=Color(0xff100B20);
const logoAssets='assets/logo.png';
const testImage='https://cdn.abjjad.com/pub/a8ee6d49-d62d-4591-bb4a-ca8abd3d1e3b.png';
InputBorder OutInputBorder(){
  return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: Colors.white));
}