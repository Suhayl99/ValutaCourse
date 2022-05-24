import 'dart:io';

import 'courseServiceImp.dart';

void main(List<String> args){
  var start=Started();
  start.startFuture().whenComplete((){
    var courseService=CourseServiceImp();
    courseService.theEnd(); 
  });       
}

class Started{
 static int next=1;
Future startFuture() async{
 var courseService=CourseServiceImp();
        await  courseService.languageChange();
        do{
    await  courseService.access();
        int kir=int.parse(stdin.readLineSync()!);
        switch (kir){
            case 1:
            courseService.allCourses();
              break;
            case 2:
            courseService.getMyCourse(); 
             
               break;
            case 3:
             courseService.eveluate(); 
               break;
            case 4:
             courseService.differenceCourse(); 
               break;  
            case 5:
              courseService.valueCourse(); 
               break; 
            case 6: 
                next=0;
               break;
            case 7:
                next=1; 
               break; 
      } 
        }while(next==1);            
}

}

