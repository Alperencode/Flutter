class Kadin {

  String isim = "";
  String soyad = "";
  int yas = 0;
  double boy = 0;

  bool _makyajli = false;

  Kadin({required String isim, required String soyad, required int yas, required double boy, required bool makyajli}){
    
    this.isim = isim;
    this.soyad = soyad;
    this.yas = yas;
    this.boy = boy;
    this._makyajli = makyajli;

  }

  bool makyajli(){
    return this._makyajli;
  }

  void makyajiTemizle(){
    print("Makyaj silindi");
  }

  static void sinifiTanit(){

    print("Kadin class'ı");

  }

}