import 'dart:io';

void main() {

  String userInput = stdin.readLineSync()!;
  List<String> inputNumbers = userInput.split(' ');
  int startTime = int.tryParse(inputNumbers[0])!;
  int endTime = int.tryParse(inputNumbers[1])!;

  int duration;

  if (startTime == endTime) {
    duration = 24;
  } else if (startTime <= endTime) {
    duration = endTime - startTime;
  } else {
    duration = (24 - startTime) + endTime;
  }

  print('$duration');
}