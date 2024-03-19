class Eatables{
  int x_position;
  int y_position;
  int dimension= 30;
  color eatable_color=  color(0, 0,255);
  Eatables(){
    //generate randome x and y pos for food  and check if it doesnt overlap
    //with snake
    int x_pos=-1;
    int y_pos=-1;
    while( !posValid(x_pos, y_pos)){
       x_pos= 65 +rand.nextInt(19)*30;
       y_pos= 65 +rand.nextInt(19)*30;
    }
    x_position= x_pos;
    y_position= y_pos;
    
  }
  void draw(){
    
    rect(x_position, y_position, dimension, dimension);
  }
  
  Boolean posValid(int x_pos, int y_pos){
    if(x_pos ==-1 || y_pos==-1){
      return false;
    }
    return true;
  }
  
}
