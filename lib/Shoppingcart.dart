import 'dart:io';

void main(){

  List<int> product_id=[101,202,303];

  String userInput = stdin.readLineSync()!;
  List<String> inputNumbers = userInput.split(' ');
  int inputnumber = int.tryParse(inputNumbers[0])!;
  int qnty = int.tryParse(inputNumbers[1])!;


  for(var i in product_id) {
    if ((i == inputnumber) && (i==101)) {
      int c = qnty * 10;
      print(c);
    }
    else if((i == inputnumber) && (i ==202 )){
      int d= qnty*25;
      print(d);
    }
    else if((i == inputnumber) && (i ==303 )){
      int e= qnty*5;
      print(e);
    }

  }
}