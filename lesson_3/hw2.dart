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
    double price = 0;
    switch (product) {
      case "telefon":
        print("Qiymət:1500 manat\n Marka:Xiaomi");
        price = 1500;
        break;
      case "qulaqliq":
        print("Qiymət:200 manat\n Marka:Xiaomi");
        price = 200;
        break;
      case "laptop":
        print("Qiymət:3700 manat\n Marka:Acer");
        price = 3700;
        print(price);
        break;
      default:
        print('Qeyd etdiyiniz mehsul bazada yoxdur');

        break;
    }
    print("Davam etmek isteyirsiniz?:Beli/Xeyr");

    continues = stdin.readLineSync().toString().toLowerCase();
    if (continues == 'xeyr') break;
    print('Nağd ödəmə üçün 1 yoxsa Kartla ödəmə üçün 2 basın:');
    int payment = int.parse(stdin.readLineSync().toString());
    switch (payment) {
      case 1:
        print("Çatdırlma üçün 1 və Özün gəl apar üçün 2 basın.");
        int choiceCash = int.parse(stdin.readLineSync().toString());
        switch (choiceCash) {
          case 1:
            price = price + 10;
            print("Çatdırlma üçün 10 manat əlavə ödəniş edilməlidir");
            print("Ödəniş:$price");
            break;
          case 2:
            print("Özünüz apardığınız halda məhsulun qiyməti sabit qalır.");
            print("Ödəniş:$price");
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
            print("Ödəniş:$price");
            break;
          case 2:
            print(
                "Taksit seçildikdə 3 bank təklif olur: Birkart, Tamkart və Bolkart, istediyiniz secii daxil edin.");
            String taksit = stdin.readLineSync().toString().toLowerCase();
            switch (taksit) {
              case "birkart":
                print(
                    "Birkart ilə 3, 6 ,12 , 18 və 24 aylıq ödəniş mümkündür və qiymət stabil qalır.");
                print("Neçə aylıq istədiyinizi daxil edin:");
                int choiceTaksit = int.parse(stdin.readLineSync().toString());
                switch (choiceTaksit) {
                  case 3:
                    price = price / 3;
                    print(
                        "3 aylıq kredit götürdünüz,hər ay üçün ödəniş məbləği: ${price.toStringAsFixed(2)}");
                    break;
                  case 6:
                    price = price / 6;
                    print(
                        "6 aylıq kredit götürdünüz,hər ay üçün ödəniş məbləği: ${price.toStringAsFixed(2)}");
                    break;
                  case 12:
                    price = price / 12;
                    print(
                        "12 aylıq kredit götürdünüz,hər ay üçün ödəniş məbləği: ${price.toStringAsFixed(2)}");
                    break;
                  case 18:
                    price = price / 18;
                    print(
                        "18 aylıq kredit götürdünüz,hər ay üçün ödəniş məbləği: ${price.toStringAsFixed(2)}e");
                    break;
                  case 24:
                    price = price / 24;
                    print(
                        "24 aylıq kredit götürdünüz,hər ay üçün ödəniş məbləği: ${price.toStringAsFixed(2)}");
                    break;
                }
                break;
              case "bolkart":
                print(
                    "Bolkart ilə  3 və 6 aylıq ödəniş var.  6 aylıq seçildikdə hər ay üçün 10 azn əlavə olunur.");
                  int choicebolkart = int.parse(stdin.readLineSync().toString());
                switch (choicebolkart) {
                  case 3:
                    price = (price / choicebolkart);
                    print(
                        "3 aylıq kredit götürdünüz,hər ay üçün ödəniş məbləği: ${price.toStringAsFixed(2)}");
                    break;
                  case 6:
                    price = (price / choicebolkart)+10;
                    print(
                        "6 aylıq kredit götürdünüz,hər ay üçün ödəniş məbləği: ${price.toStringAsFixed(2)}");
                    break;
                  case 12:
                    price = (price / choicebolkart);
                    print(
                        "12 aylıq kredit götürdünüz,hər ay üçün ödəniş məbləği: ${price.toStringAsFixed(2)}");
                    break;
                  case 18:
                    price = (price / choicebolkart);
                    print(
                        "18 aylıq kredit götürdünüz,hər ay üçün ödəniş məbləği: ${price.toStringAsFixed(2)}");
                    break;
                  case 24:
                    price = (price / choicebolkart);
                    print(
                        "24 aylıq kredit götürdünüz,hər ay üçün ödəniş məbləği: ${price.toStringAsFixed(2)}");
                    break;}
                break;
              case "tamkart":
                print(
                    "Tamkart ilə 3, 6 və 12 ayllq ödəniş var. 12 aylıq seçildikdə  məhsulun qiymətinin üzərinə 25% əlavə olunur.");
                     int choiceTamkart = int.parse(stdin.readLineSync().toString());
                switch (choiceTamkart) {
                  case 3:
                    price = (price/ choiceTamkart);
                    print(
                        "3 aylıq kredit götürdünüz,hər ay üçün ödəniş məbləği: ${price.toStringAsFixed(2)}");
                    break;
                  case 6:
                    price = (price/ choiceTamkart);
                    print(
                        "6 aylıq kredit götürdünüz,hər ay üçün ödəniş məbləği: ${price.toStringAsFixed(2)}");
                    break;
                  case 12:
                    price = (price+0.25*price) / choiceTamkart;
                    print(
                        "12 aylıq kredit götürdünüz,hər ay üçün ödəniş məbləği: ${price.toStringAsFixed(2)}");
                    break;
                  case 18:
                    price = (price/ choiceTamkart);
                    print(
                        "18 aylıq kredit götürdünüz,hər ay üçün ödəniş məbləği: ${price.toStringAsFixed(2)}");
                    break;
                  case 24:
                    price = (price/ choiceTamkart);
                    print(
                        "24 aylıq kredit götürdünüz,hər ay üçün ödəniş məbləği: ${price.toStringAsFixed(2)}");
                break;
            }
            break;
        }
        break;
    }
  }
}}
