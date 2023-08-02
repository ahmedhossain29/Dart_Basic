void main(){
   
   List<String> studentsName=['Aman','Sumon','Prema','Ahmed'];
   print(studentsName);
   studentsName.add('Hossain');
   print(studentsName);
   studentsName.addAll(['Sojib','Biplob']);
   print(studentsName);
   studentsName.remove('Aman');  // remove value 
   print(studentsName);
   studentsName.removeAt(1);   // remove Index value 
   print(studentsName);

    }
