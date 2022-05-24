import 'dart:io';

import 'courseService.dart';
import 'coursevaluta.dart';
 
class CourseServiceImp implements CourseService{
 static int language=1;
 static String kursNomi="VALYUTANING NOMI";
 static String qiymat="Qiymatini kiriting";
 static String languageMessage="siz tilni tanladingiz!!";
 static String barchasi="valuta statistikasi";
 static String izlashvalyuta="Siz qidirgan valuta ";
 static String valutaSom="Valuta so'mdagi qiymati ";
 static String valyutalarfarqi=" Valyutalar farqi ";
 static String chiqish="dasturdan chiqish";
 static String qaytaFoydalanish="Qayta foydalanish ";
 static String  valutaqiymati="Valuta qiymatini boshqa valutalardagi qiymati";
 static String xayr="🤗🤗🤗  < --- E'tiboringiz uchun tashakkur! ---> 🤗🤗🤗";
  @override
  void allCourses() {
    getCourse().then((value){
        for(var item in value){
        switch(language){
      case 1: print(item.toStringUzbek());
      break;
      case 2: print(item.toStringRus());
      break;
      case 3: print(item.toStringEnglish());
      break;
      case 4: print(item.toStringUzbekirill());
      break;
     default:language=1; break;
    }
      }
    });
  }

  @override
  void eveluate(){
   getCourse().then((value){
     int i=0;
        for (var item in value) {
            i++;
          if(i%10==0){
            print("");
          }
            stdout.write("${item.ccy}  ");
        }
            print("");
            print("$kursNomi:  ");
        String name=stdin.readLineSync()!;
        print("$qiymat:  ");
        double son=double.parse(stdin.readLineSync()!);
        for (var kurs in value) {
            if (kurs.ccy==name.toUpperCase()){
              var sum=double.parse(kurs.rate)*son;
              print("----------------------------------------");
              print("|$son ${kurs.ccy} --> $sum so'm  |");
              print("----------------------------------------");
            }
        }
   });
  }

  @override
  void getMyCourse(){
   getCourse().then((value){
     int i=0;
     for(var item in value){
        i++;
      if (i % 10 == 0) {
                print("");
            }
            stdout.write("${item.ccy} ");
        }
        print("");
        print("$kursNomi:  ");
        String name=stdin.readLineSync()!;
        for (var kurs in value ) {
            if (kurs.ccy==name.toUpperCase()){
              print("----------------------------------------");
                print("| 💰 ${kurs.ccy} --> ${kurs.rate} so'm 💰 |");
                print("----------------------------------------");
            }
     }
   });
  }

Future languageChange() async{
     getCourse().then((value){
 print("\n 🔁 🏦 Milliy Bank 🏦 🔁\n");
  print("${value[0].date} 👇\n");
  print('🇺🇸 1 USD = 🇺🇿 ${value[0].rate} UZS');
  print('🇪🇺 1 EUR = 🇺🇿 ${value[1].rate} UZS');
  print('🇷🇺 1 RUB = 🇺🇿 ${value[2].rate} UZS');
  
  print("---------------------------------------------------------------");
    print('''--------> Tilni tanlang !  (Automatic xolatda holatda 🇺🇿 ) 
     1-> 🇺🇿 uzbek     2-> 🇷🇺 Rus 
     3-> 🇬🇧 English  4-> 🏳️ Uzbek krill
     ''' );
      print("---------------------------------------------------------------");
    language=int.parse(stdin.readLineSync()!);
    switch(language){
      case 1: language=1;
      break;
      case 2: language=2;
      break;
      case 3: language=3;
      break;
      case 4: language=4;
      break;
     default: language=1; break;
    }
    constLanguage();

    print("_____${languageMessage}______");
     print("---------------------------------------------------------------");
     });

  }

static constLanguage(){
 switch(language){
      case 1: 
        kursNomi="VALYUTANING NOMI";
        languageMessage="siz tilni tanladingiz!!";
        qiymat="Qiymatini kiriting";
        barchasi="valuta statistikasi";
        izlashvalyuta="Siz qidirgan valuta ";
        valutaSom="Valuta so'mdagi qiymati ";
        valyutalarfarqi=" Valyutalar farqi ";
        chiqish="dasturdan chiqish";
        qaytaFoydalanish="Qayta foydalanish ";
         valutaqiymati="Valuta qiymatini boshqa valutalardagi qiymati";
         xayr="🤗🤗🤗  < --- E'tiboringiz uchun tashakkur! ---> 🤗🤗🤗";
      break;
      case 2: 
         kursNomi="НАЗВАНИЕ ВАЛЮТЫ";
        languageMessage="Вы выбрали язык !!";
        qiymat="Введите значение";
        barchasi = "валютная статистика";
        izlashvalyuta = "валюта, которую вы ищете";
        valutaSom = "Стоимость валюты в сумах";
        valyutalarfarqi = "Валютная разница";
         chiqish = "выход из программы";
         qaytaFoydalanish = "повторное использование";
         valutaqiymati = "Стоимость валюты в других валютах";
         xayr="🤗🤗🤗 <--- Спасибо за внимание! ---> 🤗🤗🤗";
      break;
      case 3: 
        kursNomi="NAME OF CURRENCY";
        languageMessage="you chose the language !!";
        qiymat="Enter the value";
        barchasi = "currency statistics";
         izlashvalyuta = "currency you are looking for";
         valutaSom = "Currency value in soums";
         valyutalarfarqi = "Currency difference";
         chiqish = "exit program";
         qaytaFoydalanish = "reuse";
         valutaqiymati = "Value of currency in other currencies";
         xayr="🤗🤗🤗 <--- Thank you for your attention! ---> 🤗🤗🤗";
      break;
      case 4: 
        kursNomi="ВАЛЮТАНИНГ НОМИ";
        languageMessage="сиз тилни танладингиз!!";
        qiymat="Қийматини киритинг";
        barchasi="валута статистикаси";
        izlashvalyuta="Сиз қидирган валута ";
        valutaSom="Валута сўмдаги қиймати ";
        valyutalarfarqi="Валюталар фарқи ";
        chiqish="дастурдан чиқиш";
        qaytaFoydalanish="Қайта фойдаланиш ";
        valutaqiymati="Валута қийматини бошқа валуталардаги қиймати";
        xayr="🤗🤗🤗  < --- Эътиборингиз учун ташаккур! ---> 🤗🤗🤗";
      break;
}
}

 Future access() async{
   await Future.delayed(Duration(seconds: 1));
print('''     =============================================================
             1 -> $barchasi   
             2 -> $izlashvalyuta
             3 -> $valutaSom
             4 -> $valyutalarfarqi
             5 -> $valutaqiymati
             6 -> $chiqish
             7 -> $qaytaFoydalanish
       ==========================================================    
        ''');
    }

    theEnd(){
print('''     ==============================================================
            $xayr
      ============================================================    
        ''');
    }
    
      @override
      void differenceCourse(){
          getCourse().then((value){
     int i=0;
        for (var item in value) {
            i++;
          if(i%10==0){
            print("");
          }
            stdout.write("${item.ccy}  ");
        }
            print("");
            print("$kursNomi:  ");
        String valuta1=stdin.readLineSync()!;
        print("$kursNomi:  ");
       String valuta2=stdin.readLineSync()!;
       var sum=0.0;
       var son=0.0;
        for (var kurs in value) {
            if (kurs.ccy==valuta1.toUpperCase()){
              sum=double.parse(kurs.rate);
            }
            if(kurs.ccy==valuta2.toUpperCase()){
              son=double.parse(kurs.rate);
            }
        }
              print("-----------------------------------------------");
              print("|$valuta1 --> ${(sum/son).toStringAsFixed(2)} $valuta2  |");
              print("-----------------------------------------------");
   });
      }
    
      @override
      void valueCourse(){
           getCourse().then((value){
     int i=0;
        for (var item in value) {
            i++;
          if(i%10==0){
            print("");
          }
            stdout.write("${item.ccy}  ");
        }
            print("");
            print("$kursNomi:  ");
        String valuta1=stdin.readLineSync()!;
        var sum=0.0;
        for (var kurs in value) {
            if (kurs.ccy==valuta1.toUpperCase()){
              sum=double.parse(kurs.rate);
            }
        }     print("-----------------------------------------------");
              print("|$valuta1 --> ($sum so'm)|");
              print("-----------------------------------------------");
          for(var item in value){
            var i=double.parse(item.rate);
            switch(language){
      case 1:  
              print("--------------------------------------------------------------");
              print("| ${item.ccyNmUz} 📗|    ${item.ccy}     | ${(sum/i).toStringAsFixed(2)} $valuta1 |");
              print("---------------------------------------------------------------");
      break;
      case 2: 
              print("--------------------------------------------------------------");
              print("| ${item.ccyNmRu} 📕|    ${item.ccy}     | ${(sum/i).toStringAsFixed(2)} $valuta1 |");
              print("---------------------------------------------------------------");
      break;
      case 3: 
              print("--------------------------------------------------------------");
              print("| ${item.ccyNmEn} 📘|    ${item.ccy}     | ${(sum/i).toStringAsFixed(2)} $valuta1 |");
              print("---------------------------------------------------------------");
      break;
      case 4: 
              print("--------------------------------------------------------------");
              print("| ${item.ccyNmUzc} 📙|    ${item.ccy}     | ${(sum/i).toStringAsFixed(2)} $valuta1|");
              print("---------------------------------------------------------------");
      break;
    }
              
          }
             
   });
      }
}