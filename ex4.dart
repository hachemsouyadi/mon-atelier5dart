class MotdepasseCourtException implements Exception{
  @override
  String toString(){
    return 'Mdp trop court (exception personnalisée)';}
}
void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException();
  }
}
void main() {
  try {
    verifierMotdepasse('123');}
  catch(e){
    print('erreur detecte : $e');
  }
}
