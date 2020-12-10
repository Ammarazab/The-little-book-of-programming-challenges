// Challenge 7
// Extend the program in Challenge 5 to make a game for seeing
// how quick people are at typ-ing the alphabet.
// Algorithm
// Tell them to hit enter key when ready
// Get the first time in seconds (and minutes)
// Get them to type in the alphabet and hit enter
// Get the second time  in seconds (and minutes)
// Check they have entered the alphabet correctly
// If they entered it correctly then
// Subtract first time from the second time
// Tell them how many seconds they took Extension
// Keep a record of the best time achieved.
// Deal with upper or lower case let-ters entered
// Hint
// You’ll need to store their attempt at the alphabet in a variable
// and compare with “abcdef...”
// Prior Knowledge Needed
// As challenge 5 plus..
// How to write an IF statement.

import 'dart:io';
import 'dart:io';

main() {
  DateTime ftime, stime;

  String fenter, alphapet;
  int time;
  print('Hello in guess time game :)');

  print('When you ready press Enter and Enter alphapet');
  fenter = stdin.readLineSync();
  if (fenter.isEmpty) {
    ftime = DateTime.now();
  }
  alphapet = stdin.readLineSync();
  if (alphapet == 'abcdefghijklmnopqrstwxyz') {
    stime = DateTime.now();
    time = stime.difference(ftime).inSeconds;
    print('you take $time seconds to print alphapet');
  } else if (alphapet != 'abcdefghijklmnopqrstwxyz') {
    print('Sorry you type alphapet wroge :(');
  }
}
