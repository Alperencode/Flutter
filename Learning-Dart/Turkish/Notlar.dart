main(){

  print("Hello World");

  // 1) Değişken Tipleri
  // Not:
  // Dart'da float değişken tipi yok
  // diğer değişken tipleri bildiğimiz değişken tipleri 
  String isim = 'Alperen';
  int sayi = 10;
  double pi = 3.14;
  bool canli = true;
  
  dynamic degisken = "Hello World";
  degisken = 10;
  degisken = 3.14;
  degisken = true;

  // var: değişken tiplerini kendisi otomatik olarak kendisi yakalıyor
  var degisken2 = 501;
  
  // null değişken oluştururken değişken tipinden sonra '?' koyuyoruz
  String? string1 = null;

  // Neden bütün değişkenleri dynamic yapmıyoruz (veri tipine özel fonksiyonlar)
  // Not:
  // değişken tipini belirtmemiz gerekmiyor ve sonradan değiştirebiliyorsak neden bütün değişkenlerde dynamic kullanmıyoruz?
  // Çünkü bütün veri tiplerinin kendilerine özel fonksiyonları var
  // ve string değil de dynamic tipini kullandığımızda bu fonksiyonları kullanamıyoruz

  // Örneğin String veri tipine özel toUpperCase() fonksiyonu metnin içindeki bütün harfleri büyük harfe çeviriyor
  // ama dynamic tipinde bir metnimiz varsa bu fonksiyonu kullanamıyoruz  
  String helloWorld = "Hello World";
  helloWorld = helloWorld.toUpperCase();
  print(helloWorld);
  
  // 2) Print ile değişken yazdırma
  // Not: 
  // print'in içine sadece değişkeni yazdırarak değişkenin içindeki değer ekrana yazdırabiliyoruz
  // ama en fazla bir değişkeni bu şekilde yazdırabiliyoruz
  print(isim);

  // 3) String içinde değişken yazdırma
  // Not:
  // String içinde değişkenlerin başına '$' işareti koyarak değişken yazdırabiliyoruz
  print("$isim $sayi $pi $canli");
  
  // 4) Multi line string yazımı (""" """)
  // Not:
  // 3 Tek tırnak veya 3 Çift tırnak ile başlayan ve biten String'ler çok satırlı string olur
  // Çok satırlı stringler tab boşluklarını ve normal boşlukları algılar 
  String cokSatirli = """ 
       Çok
          Satirli
  Metin
  """;
  print(cokSatirli);
  
  // 5) String içinde tek tırnak ve çift tırnak farkı (' ve " işareti) 
  // Not:
  // Tek tırnaklı String içinde çift tırnak kullanabiliyoruz
  // Çift tırnaklı String içinde de tek tırnak kullanabiliyoruz
  // Ve bu sayede String'leri bozmadan iki noktalama işaretini de kullanabiliyoruz
  String isim2 = 'Alperen "Ağa" ';
  String isim3 = "Alperen'nin ";

  // 6) Operatörler
  // C ile tamamen aynı
  int toplama = 10 + 5;
  int carpma = 10 * 5;
  
  toplama += 10;
  toplama++;
  ++toplama;

  // 7) If-Else
  // C ile tamamen aynı
  int s1 = 5;
  int s2 = 10;

  if(s1<s2){
    print("s1 küçüktür");
  }
  else if(s1 == s2){
    print("eşit");
  }
  else{
    print("s1 büyüktür");
  }

  // 8) Döngüler
  // C ile tamamen aynı
  // Not: Burada olmayan döngü tipleri de var ileride görücez (foreach ve for'un başka kullanımı)
  for(int i = 0; i<=10; i++){
    print(i);
  }

  int j = 0;
  while(j <= 10){
    print(j);
    j++;
  }

  // Örnek
  // 0-50 arası çift sayıları yazdırma
  for(int i = 0; i <= 50; i++){
    if (i%2==0) {
      print(i);
    }
  }
  
  // 9) Listeler
  // Not:
  // List'den sonra <> içinde veri tipini belirtiyoruz
  // sonra listenin ismini giriyoruz
  // [] içine de elemanları giriyoruz
  // Liste uzunluğunu otomatik yakalıyor bizim belirtmemize gerek yok
  List<String> liste1 = ["Elma","Armut","Karpuz","Limon"];

  // liste1.length listenin uzunluğunu veriyor
  // indisler ile listeyi gezmek istersek kullanıyoruz
  for (int i = 0; i < liste1.length; i++){

    print(liste1[i]);

  }

  // 10) 'for in' kullanımı
  // Not:
  // for'dan sonra listenin içini gezicek değişkenin veri tipini belirtiyoruz
  // Aşağıda otomatik yakalaması için var olarak belirledik
  // Listeyi gezicek değişkenin ismi ve 'in liste2' gibi geziceği listeyi belirtiyoruz   

  // Bundan sonra i bizim için listenin içindeki değer oluyor
  // İlk döndüğünde 'Elma' ikinci döndüğünde 'Armut' gibi
  List<String> liste2 = ["Elma","Armut","Karpuz","Limon"];
  for(var i in liste1){

    print(i);

  }
  
  // 11) Metinleri belirli bir kritere göre ayırıp liste haline getirme
  // Not:
  // Bir metni .split() ile içine verdiğimiz değere göre ayırıp her ayrılan değeri 
  // Listeye bir eleman olarak ekliyor

  // "Hello World Alperen".split(" ") boşluk'a göre elemanlara ayırıp
  // liste2'ye eleman olarak atıyor
  List<String> liste3 = "Hello World Alperen".split(" ");
  print(liste3);

  for(var i in liste3){
    print(i);
  }

}