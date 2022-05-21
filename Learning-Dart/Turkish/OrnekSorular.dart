void main() {

  // 1. Soru 
  // a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  // Yukarıdaki listeyi yaratıp 5'den küçük elemanları ekrana yazdırın
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for (var i in a) {
    if(i < 5){
      print(i);
    }
  }


  
  // 2. Soru
  // sayi = (Herhangi bir sayı)
  // Yukarıdaki sayının bütün tam bölenlerini ekrana yazdırın
  int sayi = 50;
  for(int i = 1; i <= sayi;i++ ){
    if(sayi % i == 0){
      print(i);
    }
  }



  // 3. Soru
  // List<int> sayilar = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  // Boş bir liste yaratıp sayilar'ın içindeki
  // bütün *tek sayıları* yarattığınız listeye ekleyin ve listeyi yazdırın
  // Listeye eleman eklemek: liste1.add(-eklenecek eleman-)
  List<int> sayilar = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> bos = [];
  for (var i in sayilar) {
    if(i % 2 != 0){
      bos.add(i);
    }
  }
  print(bos);


  
  // 4. Soru
  // cumle = "That's what she said"
  // Yukarıdaki cümlenin kelimelerini tersten yazdırın
  String cumle = "That's what she said Alperen Ağa";
  List<String> list1 = cumle.split(" ");

  int uzunluk = list1.length - 1;

  for(int i = uzunluk; i >= 0; i--){
    print(list1[i]);
  }


  // Yol: 
  // 1) String listesi yaratıp .split() ile cümleyi ayırın
  // 2) uzunluk değişkeni yaratıp listenin uzunluğunun 1 eksiğini alın
  // 3) for döngüsü ile listeyi tersten gezip ekrana yazdırın



  // 5. Soru
  // Asağıdaki Listelerdeki elemanları yazdir isimli bir fonksiyon kullanarak
  // "İsim: {isim} Yas: {yas} Bölüm: {bölüm}"
  // Şeklinde ekrana yazdırın

  List<String> isimler = ["Alperen","Efe","Egemen","Danyal"];
  List<int> yaslar = [19,18,20,19];
  List<String> bolumler = ["Yazılım","Arkeoloji","Mezun","Geomatik"];

  // Yol: 
  // 1) 3 parametre alan bir fonksiyon yazın (String, int, String)
  // 2) fonksiyonun içinde istenen çıktıyı yazdırın
  // 3) For döngüsü ile isim listesini gezip 
  // 4) fonksiyona bütün listelerin o anki elemanını gönderin
  // Örn: yazdir(isimler[i], yaslar[i], bolumler[i])
  

}