import 'dart:io';

void main(){  
  stdout.write('entrez votre age'); 
  var ageText = stdin.readLineSync();
  try {
    var age = int.parse(ageText!);
    print("votre age est$age"); 
  } 
  on FormatException catch(e){ 
    print("Format invalide$e"); 
  }
  finally {
  print('Fin doperation');
}

}
  