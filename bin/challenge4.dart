//Challenge 4
// Write a program that will work out the distance travelled
// if the user enters in the speed and the time.
// Extension
// Get the program to tell you the speed you would have to travel
// at in order to go a distance within a certain time entered by the user.
import 'dart:io';

main() {
print('Hello in speed Calculator');
var timei,distanci;
print('Enter Time you take it in your travell');
timei = stdin.readLineSync();
print('Enter Distance you take it in your travell');
distanci = stdin.readLineSync();
double time, distance, speed;
time = double.parse(timei);
distance = double.parse(distanci);
speed = distance/time;
print('Your speed is $speed Km/Hr');

}
