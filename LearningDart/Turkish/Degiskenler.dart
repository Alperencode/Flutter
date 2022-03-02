main() {
  
  // print("Hello World");

  // Değişken Tipleri
  String isim = 'Alperen';
  int sayi = 10;
  double pi = 3.14;
  bool canli = true;
  String? string1 = null;
  
  // Print ile değişken yazdırma
  // print(isim);

  // String içinde değişken yazdırma (print içine birden fazla obje alamıyor)
  // print("$isim $sayi $pi $canli");
  String cokSatirli = ''' 
       Çok
          Satirli
  Metin
  ''';
  

  // print(cokSatirli);
  // String içinde tek tırnak ve çift tırnak farkı (' ve " işareti) 
  // Multi line string yazımı (""" """)
  // String isim2 = 'Alperen" xx';
  // String isim3 = "Alperen' xx";
  // print(isim2);


  // Operatörler
  // C ile tamamen aynı
  int toplama = 10 + 5;
  int carpma = 10 * 5;
  // print("$carpma");
  // print(carpma);


  // If-Else
  // C ile tamamen aynı
  int s1 = 5;
  int s2 = 10;

  // if(s1<s2){
  //   print("s1 küçüktür");
  // }else if(s1 == s2){
  //   print("eşit");
  // }else{
  //   print("s1 büyüktür");
  // }

  // Döngüler 
  // C ile tamamen aynı
  // for(int i = 0; i<=10; i++){
  //   print(i);
  // }

  // int j = 0;
  // while(j <= 10){
  //   print(j);
  //   j++;
  // }

  // Örnek
  // 0-50 arası çift sayıları yazdırma
  
  
  
  // var ve dynamic 
  var isim3 = true;
  dynamic isim4 = "Alperen";

  // if(isim3){
  //   print("isim3 true");
  // }

  // var ve dynamic'in farkı:
  // Neden bütün değişkenleri dynamic yapmıyoruz (veri tipine özel fonksiyonlar)
  var serhat;
  dynamic betul = "Betül";

  betul = 10;
  serhat = 10;
  serhat =  "alperen";

  String aysegul = "Aysegul";
  int s3 = 10;

  // Değişken dönüşümleri
  // int.parse - double.parse - tryParse - toString
  String s5 = "10.5a";
  int? s6 = int.tryParse(s5);
  // print(s6);

  int sayi5 = 10000;
  String sayi5String = sayi5.toString();
  // print(sayi5String);

  // const ve final tipi
  const m1 = "Alperen"; 
  final m2 = 10;

  //m2 += 5;
  // print(m1);
  // m1 = "Serhat";

}