class Erkek {

  String isim = "";
  String soyad = "";
  int yas = 0;
  double boy = 0;

  bool _sakalli = false;

  Erkek({required String isim, required String soyad, required int yas, required double boy, required bool sakalli}){
    
    this.isim = isim;
    this.soyad = soyad;
    this.yas = yas;
    this.boy = boy;
    this._sakalli = sakalli;

  }

  bool sakalli(){
    return this._sakalli;
  }

  void tirasOl(){
    print("Tıraş oldu");
  }

  static void sinifiTanit(){

    print("Erkek class'ı");

  }

}
