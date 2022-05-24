import 'dart:io';

import 'courseServiceImp.dart';
bool _next=true;
void main(List<String> args) {
  var courseService=CourseServiceImp();
            courseService.language();
         
          //  while(_next){
        print("1 -> Barcha kurslar   2 -> Siz tanlagan kurs  3 -> qiymatni bilish ");
        int kir=int.parse(stdin.readLineSync()!);
        switch (kir){
            case 1:
                courseService.allCourses();
               // nextFunc();
              break;
            case 2:
                courseService.getMyCourse(); 
              //  nextFunc();
               break;
            case 3:
                courseService.eveluate(); 
               // nextFunc();
               break;
            default: break;
        }
           // }
           
}

 nextFunc(){
   print("yana foydalnasizmi : 1) HA  2) Yo'q");
   int s=int.parse(stdin.readLineSync()!);
   if(s==1){
     _next=true;
   }else{
     _next=false;
     print("E'tiboringiz uchun tashakkur!");
   }
 }
