void main() {
  
  Map<String, dynamic> person = {
    "PersonID": 1,
    "Name": "John Doe",
    "Age": 30,
    "Salary": 50000,
    "Gender": "Male",
   
   
  };

  
  int personID = person["PersonID"];
  int age = person["Age"];
  int salary = person["Salary"];


 
  print("$salary");

}
