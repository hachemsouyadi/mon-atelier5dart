import 'dart:io';

class NombreNegatifException implements Exception{
  @override
  String toString(){
    return 'erreur : le nombre ne peut pas etre negatif';
  }
}

void main(){
  try{
    stdout.write("wntre un nombre : ");
    int nombre=int.parse(stdin.readLineSync()!);

    if (nombre<0){
      throw NombreNegatifException();
    }

    print("Le carré de$nombre est:${nombre * nombre}");
  }
  on NombreNegatifException catch(e){
    print(e);
  }
  catch (e){
    print("Erreur inattendue : $e");
  }
  finally{
    print("Fin du programme");
  }
}
