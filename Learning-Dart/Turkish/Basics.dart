main() {
  
  print("Hello World");

  // 1) Değişken Tipleri
  // Not:
  // Dart'da float değişken tipi yok
  // diğer değişken tipleri bildiğimiz değişken tipleri 
  String isim = 'Alperen';
  int sayi = 10;
  double pi = 3.14;
  bool canli = true;
  
  // null değişken oluştururken değişken tipinden sonra '?' koyuyoruz
  String? string1 = null;
  
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
  // 3 Tek tırnak veya 3 Çift tırnak ile başlayan ve biten String'ler çok satırlı stringdir
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
  
  // 9) var ve dynamic değişken tipleri
  // Not:
  // var: değişken tiplerini kendisi otomatik olarak kendisi yakalıyor
  // ama ve değişkene o tipi atıyor
  
  // Örneğin aşağıdaki kodu yazdığımızda
  var isim4 = "Hello World";
  // isim4 değişkeni String tipinde bir değişken oluyor
  // ama bu değişkenin tipi sonradan değiştirilemiyor

  // dynamic ise kendisi bir veri tipi
  // dynamic olan değişkenlerin tipi fark etmiyor ve sonradan değiştirilebilir oluyor
  // Örneğin: dynamic bir değişkene ilk önce String atayıp
  // sonrasında da int değeri atayabiliyoruz  
  dynamic isim5 = "Alperen";
  isim5 = 10;
  isim5 = 3.14;
  isim5 = true;
  isim5 = "Hello World";

  // 10) Neden bütün değişkenleri dynamic yapmıyoruz (veri tipine özel fonksiyonlar)
  // Not:
  // değişken tipini belirtmemiz gerekmiyor ve sonradan değiştirebiliyorsak neden bütün değişkenlerde dynamic kullanmıyoruz?
  // Çünkü bütün veri tiplerinin kendilerine özel fonksiyonları var
  // ve string değil de dynamic tipini kullandığımızda bu fonksiyonları kullanamıyoruz

  // Örneğin String veri tipine özel toUpperCase() fonksiyonu metnin içindeki bütün harfleri büyük harfe çeviriyor
  // ama dynamic tipinde bir metnimiz varsa bu fonksiyonu kullanamıyoruz  
  String helloWorld = "Hello World";
  helloWorld = helloWorld.toUpperCase();
  print(helloWorld);

  // 11) Değişken dönüşümleri
  // int.parse - double.parse - tryParse - toString
  
  // int.parse(): içine verdiğimiz metin değişkenini int tipine dönüştürür
  // ama metin int'e dönüştürülemiyorsa ("10aa" gibi) hata verir
  String sayiMetni = "444";
  int sayi1 = int.parse(sayiMetni); 

  // int.tryParse(): parse ile tamamen aynı ama metni dönüştürmeye çalışır
  // dönüştüremezse hata vermez, boş (null) değeri atar
  String sayiMetni2 = "501aa";
  int? sayi2 = int.tryParse(sayiMetni2);
  // boş değer atama ihtimali olduğu için değişkenden tipinden sonra '?' yazıyoruz

  // toString(): bir değişkeni String'e çevirir
  // TryToString gibi bir fonksiyon yok çünkü bütün değişkenler string'e çevirilebilir
  int sayi3 = 10000;
  String sayi3String = sayi3.toString();

  // 12) const ve final tipi
  // Not:
  // const ve final tipi sonradan değiştirilemeyen veri tipidir
  // var gibi bizim için veri tipini kendisi yakalarlar
  // ikiside aynı görevi görüyor aralarında ince bir fark var ama şuanlık bilmemize gerek yok
  const m1 = "Alperen"; 
  final m2 = 10;

  // Yaparsak hata vericek işlemler (Çünkü sonradan değiştirilemiyor)
  // m2 += 5;
  // m1 = "Serhat";

  // 13) Listeler
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

  // 14) 'for in' kullanımı
  // Not:
  // for'dan sonra listenin içini gezicek değişkenin veri tipini belirtiyoruz
  // Aşağıda otomatik yakalaması için var olarak belirledik
  // Listeyi gezicek değişkenin ismi ve 'in liste1' gibi geziceği listeyi belirtiyoruz   

  // Bundan sonra i bizim için listenin içindeki değer oluyor
  // İlk döndüğünde 'Elma' ikinci döndüğünde 'Armut' gibi
  for(var i in liste1){

    print(i);

  }
  
  // 15) Metinleri belirli bir kritere göre ayırıp liste haline getirme
  // Not:
  // Bir metni .split() ile içine verdiğimiz değere göre ayırıp her ayrılan değeri 
  // Listeye bir eleman olarak ekliyor

  // "Hello World Alperen".split(" ") boşluk'a göre elemanlara ayırıp
  // liste2'ye eleman olarak atıyor
  List<String> liste2 = "Hello World Alperen".split(" ");
  print(liste2);

  for(var i in liste2 ){
    print(i);
  }

  // 16) foreach ile liste gezimi
  // Not:
  // liste1'e fonksiyon olarak çağırıyoruz
  // parantez içinde listede gezicek değişkeni veriyoruz
  // süslü parantez içinde de listeyi her döndüğünde yapılıcak işlemi giriyoruz
  liste1.forEach( (element) {print(element);});

}