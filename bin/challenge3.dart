//Challenge 3
//Write a program to work out the areas of a rectangle.
// Collect the width and height of the rectangle from the keyboard
// Calculate the area  display the result. Extension
// display the volume of a cu-boid.
// See what happens when you don't type in numbers!
// Try to explain what has hap-pened and why Prior
// Knowledge Needed
// How to create variables
// How to input data into a variable
// How to display variables
// How to perform basic mathematical calculations
import 'dart:io';

main() {
  String l, w, h;
  int a, v;
  int lr, wr, hr;
  print('Hello in Area & Volume Calculator');
  print('Type rectangle length');
  l = stdin.readLineSync();
  print('Type rectangle width');
  w = stdin.readLineSync();
  print('Type rectangle height if you need volume or press Enter');
  h = stdin.readLineSync();
  lr = int.parse(l);
  wr = int.parse(w);

  if (h.isEmpty) {
    a = lr * wr;
    print('rectangle area is $a');
  } else {
    hr = int.parse(h);
    //you should change h type to string after check h is empty bec. isEmpty
    //function can't apply at int type
    v = lr * hr * wr;
    print('rectangle volume is $v');
  }
}
