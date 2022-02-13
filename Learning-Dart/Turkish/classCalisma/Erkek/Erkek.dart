class Erkek{

  static int sayac = 0;

  String _isim = "";
  String soyisim = "";
  int yas = 0;
  double boy = 0;

  bool sakalli = false;

  Erkek(String isim, String soyisim, int yas, double boy, bool sakalli){

    this._isim = isim;
    this.soyisim = soyisim;
    this.yas = yas;
    this.boy = boy;
    this.sakalli = sakalli;

    sayac++;

  }

  void _tanit(){

    print("İsim: $_isim");

  }

}