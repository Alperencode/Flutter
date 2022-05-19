void main() {

  // 1. Soru 
  // a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  // Yukarıdaki listeyi yaratıp 5'den küçük elemanları ekrana yazdırın
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  for(var i in a){
    if (i < 5) {
      print(i);
    }
  }


  // 2. Soru
  // sayi = (Herhangi bir sayı)
  // Yukarıdaki sayının bütün tam bölenlerini ekrana yazdırın
  int sayi = 25;

  for (var i = 1; i <= sayi; i++) {
    if (sayi % i == 0) {
      print(i);
    }
  }


  // 3. Soru
  // List<int> sayilar = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  // Boş bir liste yaratıp sayilar'ın içindeki
  // bütün *tek sayıları* yarattığınız listeye ekleyin ve listeyi yazdırın
  List<int> sayilar = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  List<int> liste1 = [];

  for (var i in sayilar) {
    if (i % 2 != 0) {
      liste1.add(i);
    }
  }
  print(liste1);


  // 4. Soru
  // cumle = "That's what she said"
  // Yukarıdaki cümlenin kelimelerini tersten yazdırın
  String cumle = "That's what she said";
  List<String> liste2 = cumle.split(" ");
  
  int uzunluk = liste2.length - 1;
  
  for(int i=0;i < liste2.length;i++){
  
    print(liste2[uzunluk - i]);
  
  }


  // 5. Soru
  // Asağıdaki Listelerdeki elemanları fonksiyon kullanarak
  // "İsim: {isim} Yas: {yas} Bölüm: {bölüm}"
  // Şeklinde ekrana yazdırın

  List<String> isimler = ["Alperen","Efe","Egemen","Danyal"];
  List<int> yaslar = [19,18,20,19];
  List<String> bolumler = ["Yazılım","Arkeoloji","Mezun","Geomatik"];

  void yazdir(String isim, int yas,String bolum){
  
    print("İsim: $isim Yas: $yas, Bölüm: $bolum");
  
  }

  for(int i=0; i < isimler.length; i++){

    yazdir(isimler[i], yaslar[i], bolumler[i]);
  
  }

}