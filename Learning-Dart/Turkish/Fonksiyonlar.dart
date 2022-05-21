void main() {
  
  var isim = "Alperen";
  var yas = 19;
  var boy = 1.75;

  var insan1 = acikla(age: 18, height: 1.57, name: "Betül");
  print(insan1);
  
  int j = 9;
  print(kareal(j));

}

String acikla({required String name, required int age,required double height}){

  return "İsim: $name, Yas: $age, Boy: $height";

}

int kareal(int i) => i*i;

// Fonksiyon yazımı
// Return tipleri
// Opsiyonel parametreler [] ve default değerler
// İsimlendirilmiş parametreler {}
// Arrow operatörü