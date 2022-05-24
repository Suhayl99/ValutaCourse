import 'dart:io';

import 'courseService.dart';
import 'coursevaluta.dart';
 
class CourseServiceImp implements CourseService{
  int _language=1;
  @override
  void allCourses() {
    GetCourse().then((value){
      for(var item in value){
        switch(_language){
      case 1: print(item.toStringUzbek());
      break;
      case 2: print(item.toStringRus());
      break;
      case 3: print(item.toStringEnglish());
      break;
      case 4: print(item.toStringUzbekirill());
      break;
     default:_language=1; break;
    }
      }
    });
  
  }

  @override
  void eveluate() {
   GetCourse().then((value){
     int i=0;
        for (var item in value) {
            i++;
          if(i%10==0){
            print("");
          }
            stdout.write("${item.ccy}  ");
        }
            print("");
            print("Kurs nomini kiriting:  ");
        String name=stdin.readLineSync()!;
        print("Qiymatini kiriting:  ");
        double son=double.parse(stdin.readLineSync()!);
        for (var kurs in value) {
            if (kurs.ccy==name){
              var sum=double.parse(kurs.rate)*son;
              print("$son ${kurs.ccy} --> $sum so'm");
            }
        }
   });
  }

  @override
  void getMyCourse() {
   GetCourse().then((value){
     int i=0;
     for(var item in value){
if (i % 10 == 0) {
                print("");
            }
            stdout.write("${item.ccy} ");
        }
        print("");
        print("Kurs nomini kiriting:  ");
        String name=stdin.readLineSync()!;
        for (var kurs in value ) {
            if (kurs.ccy==name){
                print(kurs.ccy+" --> "+kurs.rate);
            }
     }
   });
  }

  @override
  void language() {
    print("Tilni tanlang ! (Automatic xolatda)  1-> uzbek  2-> Rus  3-> English  4->Uzbek krill" );
    _language=int.parse(stdin.readLineSync()!);
    switch(_language){
      case 1: _language=1;
      break;
      case 2: _language=2;
      break;
      case 3: _language=3;
      break;
      case 4: _language=4;
      break;
     default:_language=1; break;
    }

  }
}