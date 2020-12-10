// Challenge 5
// Write a program to work out how many days you have lived for.
// Agorithm
// Enter date of birth
// Get today’s date
// Get the difference in days between the two dates
// Display  result
// Extension
// Work out how many seconds you’ve lived for.
// Hints Use Date.
// Now to get today’s date
// Use the date type for a variable to store your date of birth
// Use the datediff function to get the difference between two days
// Prior Knowledge Needed
// How to create variables How to input data into a variable
// How to display variables How to use system functions.
// How to use system variables
import 'dart:io';

main() {
  DateTime td, dob;

  var ddobi, mdobi, ydobi;
  int ddob, mdob, ydob, ageindays, ageinsec;
  double ageinyears;

  td = DateTime.now();

  print('Hello in age calculator :)');
  print('Enter your Day of birth');
  ddobi = stdin.readLineSync();
  print('Enter your month of birth');
  mdobi = stdin.readLineSync();
  print('Enter your year of birth');
  ydobi = stdin.readLineSync();

  ddob = int.parse(ddobi);
  mdob = int.parse(mdobi);
  ydob = int.parse(ydobi);

  dob = DateTime.utc(ydob, mdob, ddob);

  ageinyears = td.difference(dob).inDays / 365;
  ageindays = td.difference(dob).inDays;
  ageinsec = td.difference(dob).inSeconds;

  print('Your age is $ageinyears');
  print('Your age in days is $ageindays');
  print('Your age in seconds is $ageinsec');
}
