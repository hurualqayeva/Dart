import 'dart:io';

main() {
  print('Sayta giriş tipinizi qeyd edin:\n login giris yoxsa guest giris');
  String login = stdin.readLineSync().toString().toLowerCase();
  if (login.contains('login')) {
    print('Login girisi etdiniz');
    print('zehmet olmasa istifadeci adi ve parol daxil ediniz');

    String? name = stdin.readLineSync().toString();
    String? password = stdin.readLineSync().toString();
    if ((name.isEmpty) || (password.isEmpty)) {
      print('Daxil edilenler bosh ola bilmez!');
    } else {
      print('adiniz: $name parolunuz: $password');
    }
  } else if (login.contains('guest')) {
    print('guest girisi etdiniz.');
  } else {
    print('zehmet olmasa duzgun daxil edin');
  }

  String continues = 'beli';
  while (continues == 'beli') {
    //Why we cannot call the variable inside the while loop if we declared it outside of the while loop.
    print('Mehsullarin siyahisi:\n 1.Telefon \n 2.Qulaqliq\n 3.Laptop');
    print("Secmek istediyiniz mehsulun adini qeyd edin");
    String product = stdin.readLineSync().toString().toLowerCase();
    switch (product) {
      case "telefon":
        print("Qiymət:1500 manat\n Marka:Xiaomi");
        break;
      case "qulaqliq":
        print("Qiymət:200 manat\n Marka:Xiaomi");
        break;
      case "laptop":
        print("Qiymət:3700 manat\n Marka:Acer");
        break;
      default:
        print('Qeyd etdiyiniz mehsul bazada yoxdur');
        break;
    }
    print("Davam etmek isteyirsiniz?:Beli/Xeyr");
    continues = stdin.readLineSync().toString().toLowerCase();
    print('Nağd ödəmə üçün 1 yoxsa Kartla ödəmə üçün 2 basın:');
    int payment = int.parse(stdin.readLineSync().toString());
    switch (payment) {
      case 1:
        print("Çatdırlma üçün 1 və Özün gəl apar üçün 2 basın.");
        int choiceCash = int.parse(stdin.readLineSync().toString());
        switch (choiceCash) {
          case 1:
            print("Çatdırlma üçün 10 manat əlavə ödəniş edilməlidir");
            break;
          case 2:
            print("Özünüz apardığınız halda məhsulun qiyməti sabit qalır.");
            break;
        }
        break;
      case 2:
        print(
            "Kartla ödəniş zamanı 2 seçiminiz var:Birbasa ucun 1, Taksit ucun 2 basin");
        int choiceCart = int.parse(stdin.readLineSync().toString());
        switch (choiceCart) {
          case 1:
            print("Birbasa odenis oldugu halda məhsulun qiyməti sabit qalır.");
            break;
          case 2:
            print(
                "Taksit seçildikdə 3 bank təklif olur: Birkart, Tamkart və Bolkart, istediyiniz secii daxil edin.");
            String taksit = stdin.readLineSync().toString().toLowerCase();
            switch (taksit) {
              case "birkart":
                print(
                    "Birkart ilə 3, 6 ,12 , 18 və 24 aylıq ödəniş mümkündür və qiymət stabil qalır.");
                break;
              case "bolkart":
                print(
                    "Bolkart ilə  3 və 6 aylıq ödəniş var.  6 aylıq seçildikdə hər ay üçün 10 azn əlavə olunur.");
                break;
              case "tamkart":
                print(
                    "Tamkart ilə 3, 6 və 12 ayllq ödəniş var. 12 aylıq seçildikdə  məhsulun qiymətinin üzərinə 25% əlavə olunur.");
                break;
            }
            break;
        }
        break;
    }
  }
}
