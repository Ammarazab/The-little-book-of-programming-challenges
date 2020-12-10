// Challenge 6
// Make a game for seeing how good people are at guessing when 10 seconds have elapsed.
// Algorithm
// Tell them to hit enter key when ready
// Get the first time in seconds
// Get them to hit the  enter key when they think  time has elapsed
// Get the second time  in seconds
// Subtract first time from the second time
// Tell them how close to 10 the answer was.
// Hint
// Use Now.Second  - To get the current time in seconds of the minute Prior
// Extension
// Sometimes this solution doesn't work.
// Can you work out why it doesn’t work?
// Can you fix it?
// Knowledge Needed
// How to create variables
// How to input data into a variable
// How to display variables How to use system functions.
// How to use system variables

import 'dart:io';

main() {
  DateTime ftime, stime;

  String fenter, senter;
  int ddob, mdob, ydob, ageindays, ageinsec;
  int time;
  print('Hello in guess time game :)');

  do {
    print('When you ready press Enter and start or end to exit');
    fenter = stdin.readLineSync();
    if (fenter.isEmpty) {
      ftime = DateTime.now();
    }else if (fenter == 'end'){
      print('thanks :) see you soon');
    }
    print(ftime);
    print('Press Enter again after 10 seconds or end to exit');
    senter = stdin.readLineSync();
    if (senter.isEmpty) {
      stime = DateTime.now();
    }else if (senter == 'end'){
      print('thanks :) see you soon');
    }
    time = stime.difference(ftime).inSeconds;
    if (time <= 3) {
      print('you reached to $time');
      print('Very low plz. try again');
    } else if (time > 3 && time <= 6) {
      print('you reached to $time');
      print('low plz. try again');
    } else if ((time > 6 && time <= 9) || (time >= 11 && time <= 13)) {
      print('you reached to $time');
      print('you are more colose plz. try again');
    } else if (time >= 14) {
      print('you reached to $time');
      print('Very high plz. try again');
    }
  } while (fenter == 'end' && senter == 'end' && time != 10);
  if (fenter == 'end' || senter == 'end') {
    print('thanks :) see you soon');
  } else if (time == 10) {
    print('you are reached to 10 seconds');
  }
}
