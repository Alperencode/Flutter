import 'Erkek/Erkek.dart';

void main(){

  var erkek1 = Erkek("Serhat","Şahin", 19,1.80 , true);
  var erkek2 = Erkek("Serhat","Şahin", 19,1.80 , true);

  print(Erkek.sayac);

  var insan1 = Insan("Alperen", "Ağa", 19, 1.75);

  print(erkek1.soyisim);

  print(insan1.isim);

  insan1.seslen();

  int x = 10;

  

}


class Insan{

  String isim = "";
  String soyisim = "";
  int yas = 0;
  double boy = 0;

  Insan(String isim, String soyisim, int yas, double boy){

    this.isim = isim;
    this.soyisim = soyisim;
    this.yas = yas;
    this.boy = boy;

  }

  void seslen(){

    print("Hey $isim!");

  }


}


// Class yazımı
// Class ve obje/nesne farkı
// Constructor
// Constructor argümanları
// this
// fonksiyon yazma
// farklı dosyalara ayırma
// private variables
// static

// Inheritance
// Overriding