import 'dart:io';

void main() {
  // Read input values
  List<int> input = stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  int minutesLeft = input[0];
  int timeAssignmentA = input[1];
  int timeAssignmentB = input[2];

  // Check if it's possible to complete both assignments today
  if (canCompleteAssignments(minutesLeft, timeAssignmentA, timeAssignmentB)) {
    print("Yes");
  } else {
    print("No");
  }
}

bool canCompleteAssignments(int minutesLeft, int timeAssignmentA, int timeAssignmentB) {
  return minutesLeft >= timeAssignmentA + timeAssignmentB;
}
