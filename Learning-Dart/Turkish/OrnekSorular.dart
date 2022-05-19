void main() {

  // 1. Soru 
  // a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  // Yukarıdaki listeyi yaratıp 5'den küçük elemanları ekrana yazdırın


  
  // 2. Soru
  // sayi = (Herhangi bir sayı)
  // Yukarıdaki sayının bütün tam bölenlerini ekrana yazdırın



  // 3. Soru
  // List<int> sayilar = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  // Boş bir liste yaratıp sayilar'ın içindeki
  // bütün *tek sayıları* yarattığınız listeye ekleyin ve listeyi yazdırın
  // Listeye eleman eklemek: liste1.add(-eklenecek eleman-)
  List<int> sayilar = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];


  
  // 4. Soru
  // cumle = "That's what she said"
  // Yukarıdaki cümlenin kelimelerini tersten yazdırın
  String cumle = "That's what she said";

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