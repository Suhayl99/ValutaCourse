import 'dart:io';

import 'courseServiceImp.dart';
bool _next=true;
void main(List<String> args){
  var courseService=CourseServiceImp();
            courseService.language();
         print("1 ->   Barcha kurslar   2 -> Siz tanlagan kurs  3 -> qiymatni bilish ");
          // while(_next){
        int kir=int.parse(stdin.readLineSync()!);
        switch (kir){
            case 1:
                courseService.allCourses();
                
              break;
            case 2:
                courseService.getMyCourse(); 
              // kir=int.parse(stdin.readLineSync()!);
               break;
            case 3:
                courseService.eveluate(); 
              // kir=int.parse(stdin.readLineSync()!);
               break;
            default: 
             print("🤗🤗🤗  < --- E'tiboringiz uchun tashakkur! ---> 🤗🤗🤗");
            // _next=false;
            break;
        //}
     }
           
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
