//Challenge 2
// Write a program that will ask you your name
// It will then display ‘Hello Name’ where ‘Name’ is the name you have entered.
// E.g.
// What is your name?
// Ada
// Hello Ada
// Prior Knowledge Needed
// How to create variables
// How to input data into a variable
// How to display variables
import 'dart:io';

main() {
  var name;
  print('What is your name?');
  name = stdin.readLineSync();
  print('Hello $name');
}
