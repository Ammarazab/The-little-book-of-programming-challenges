//Challenge 1

//Write a program that will display a joke
//Don’t display the punchline until the reader hits the enter key.
// Extension  display the punchline in a different colour
//Prior Knowledge Needed

// How to output information to the screen
import 'dart:io';
import 'dart:math';

main() {
  List jokes;
  jokes = [
    'joke1',
    'joke2',
    'joke3',
    'joke4',
    'joke5',
    'joke6',
    'joke7',
    'joke8',
    'joke9',
    'joke10',
    'joke11',
    'joke12',
    'joke13',
    'joke14',
    'joke15',
  ];
  Random randomjoke;
  int joke;
  randomjoke = Random();
  print('Hello in Joke program');
  String order;

  do {
    joke = randomjoke.nextInt(jokes.length);
    print("print any key to see it or 'end' to exits :)");
    order = stdin.readLineSync();
    if ((order != 'end') && (order != 'End') && (order != 'END')) {
      print(jokes[joke]);
    }
  } while (order != 'end' && order != 'End' && order != 'END');
}
