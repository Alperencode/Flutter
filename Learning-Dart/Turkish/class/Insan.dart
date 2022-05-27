import 'Erkek.dart';

void main() {

  var erkek1 = Erkek(isim: "Serhat", soyad: "Şahin", yas: 19, boy: 1.80, sakalli: true);
  print(erkek1.sakalli());
  Erkek.sinifiTanit();

  var insan1 = Insan(isim: "Alperen", soyad:"Ağa", yas: 19, boy: 1.75);
  insan1.tanit();

  var insan2 = Insan(soyad: "Şahin", isim: "Betül", boy: 1.58, yas: 18);
  print(insan2.isim);

  print(Insan.sayac);

}

class Insan{

  static int sayac = 0;
  
  String isim = "";
  String soyad = "";
  int yas = 0;
  double boy = 0;

  Insan({required String isim, required String soyad, required int yas, required double boy}){
    
    this.isim = isim;
    this.soyad = soyad;
    this.yas = yas;
    this.boy = boy;
    
    sayac++;

  }

  void tanit(){

    print("İsim: $isim");
    print("Soyad: $soyad");
    print("Yas: $yas");
    print("Boy: $boy");

  }

  void seslen(){
    print("Hey!");
  }

  void ye(){
    print("Yemek");
  }

}

// Class yazımı
// Class ve obje/nesne farkı
// Constructor
// Constructor argümanları
// this
// fonksiyon yazma
// isimli argümanlar
// farklı dosyalara ayırma
// private variables
// static

// Inheritance
// Overriding