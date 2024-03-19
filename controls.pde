void keyPressed(){
 if  (key==CODED){
   if (keyCode==UP){
     snake.move(0);
   }
   else if(keyCode==DOWN){
     snake.move(1);
   }
   else if(keyCode==LEFT){
     snake.move(2);
   }
   else if(keyCode==RIGHT){
     snake.move(3);
   }
   
 }
  
}
