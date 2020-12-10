// Challenge 8
// Write a program that will accept someone’s date of birth
// and work out whether they can vote (i.e. Are they 18?)
// Prior Knowledge Needed
// How to create IF statement.
// Using the dateDiff function

import 'dart:io';

main() {
  DateTime td, dob;
  var ddobi, mdobi, ydobi;
  int ddob, mdob, ydob, ageindays;

  td = DateTime.now();

  print('Hello in Election vote eligibile program :)');
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
  ageindays = td.difference(dob).inDays;

  if(ageindays>=((18*365)+4)){
    print('Congraletaion you can vote :)');
  }else if (ageindays<((18*365)+4)){
    print("Sorry you can't vote :)");
  }

}
