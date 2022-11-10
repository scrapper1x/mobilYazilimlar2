class Canlilar {
  String? Ad;
  int? Yas;
  bool? Cinsiyet;

  Canlilar({this.Ad, this.Yas, this.Cinsiyet});

  String yuru() => "${this.Ad} isimli canlı yürüyor";
}

class insan extends Canlilar {
  String? soyad;
  bool? gozluk;
  double? aylikgelir;
  static double? Vize;
  static double? Final;

  insan(String ad, String soyad, bool gozluk, double gelir) {
    this.Ad = ad;
    this.soyad = soyad;
    this.gozluk = gozluk;
    this.aylikgelir = gelir;
  }

  insan.not(double v, double f) {
    Vize = v;
    Final = f;
  }

  String kos() {
    return "${this.Ad} ${this.soyad} koşuyor";
  }

  static double ortalama() {
    print("Ortalamanız:");
    return (30 / 100) * (Vize ?? 0) + (Final ?? 0) * (70 / 100);
  }
}

void main(List<String> args) {
  var canli1 = new Canlilar();
  canli1.Ad = "İnsan";
  canli1.Cinsiyet = true;
  canli1.Yas = 5;

  print(canli1.yuru());

  var karakter = new insan("Azat", "CAYLI", true, 10000);

  print(karakter.yuru());
  print(karakter.kos());
  insan.not(84, 75);

  print(insan.ortalama());
}
