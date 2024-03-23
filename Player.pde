class Player{
  int x_position=350-15;
  int y_position=350-15;
  final int dimension= 30;
  color player_color=  color(255, 0,0);
  int length= 1;
  int direction= -1;
  ArrayList <Integer[]> prevpos= new ArrayList<Integer []>();
  Player(){
    prevpos.add(new Integer[]{x_position, y_position});
  }
  
  void move(int num){//num signifies the direction 
    //0 for up
    //1 for down
    //2 for left
    //3 for right
    direction= num;
    
    //check boundary
    if (checkFood(x_position, y_position, num)){
      println("collided");
      food = new Eatables();
      game1.setScore(game1.getScore()+1);
      length++;
    }
    if (!checkBoundary(x_position, y_position, num)) {
      tab= "intro";
       myPort.write('1');
      game1.gameover();
      return;
    }
    
    switch(num){
      case 0:
      y_position-=dimension;
      break;
      case 1:
      y_position+=dimension;
      break;
      case 2:
      x_position-=dimension;
      break;
      case 3:
      x_position+=dimension;
      break;
     
      
    }
     //println("Snake :",x_position, " by ", y_position , ", Food: ", food.x_position, " by ", food.y_position);
  
    
    
  }
  boolean checkBoundary(int x_pos, int y_pos, int num){
    switch(num){
      case 0:
      y_pos-=dimension;
      break;
      case 1:
      y_pos+=dimension;
      break;
      case 2:
      x_pos-=dimension;
      break;
      case 3:
      x_pos+=dimension;
      break;
    }
    if (x_pos <50 || x_pos>=620){
      return false;
      }
    if (y_pos< 50 || y_pos>=620){
      return false;
    }
    for (int i= 1; i<prevpos.size()-1;i++ ){//check if the snake is attacking itself
      if((x_pos==prevpos.get(i)[0])&& (y_pos==prevpos.get(i)[1])){
        println(prevpos.get(i)[0] +" and "+prevpos.get(i)[1] );
        
        return false;
      }
    }
    return true;
  }
  boolean checkFood(int x_pos, int y_pos, int num){
    switch(num){
      case 0:
      y_pos-=dimension;
      break;
      case 1:
      y_pos+=dimension;
      break;
      case 2:
      x_pos-=dimension;
      break;
      case 3:
      x_pos+=dimension;
      break;
    }
    //x_pos+=dimension;
    //y_pos+=dimension;
    if ((x_pos==food.x_position)&& (y_pos==food.y_position)){
      return true;
    }
    //if (y_pos>=food.y_position && y_pos <= food.y_position+food.dimension){
    //  return true;
    //}
    return false;
  }
  void draw(){
    
    ArrayList<Integer []> temp_prev=(ArrayList<Integer []>) prevpos.clone();
    
   
    rect(x_position, y_position, dimension, dimension);//draw head
    fill(255);
    circle(x_position+15, y_position+15, 15);//draw eyes;
    fill(0);
    circle(x_position+15, y_position+15, 5);//draw pupil;
     fill(snake.player_color);
    if (x_position == temp_prev.get(0)[0] && y_position == temp_prev.get(0)[1]){
      //println("here");
      for (int i= 1; i< length; i++){
        if (temp_prev.size() >i){
           rect(temp_prev.get(i)[0],temp_prev.get(i)[1], dimension, dimension);
        }
        
      }
    }
    else{
      //println("here1");
      prevpos= new ArrayList<Integer []>(); //<>//
      prevpos.add(new Integer []{x_position, y_position}); 
      println(temp_prev.size());
      for (int i= 1; i< length; i++){
        //if (temp_prev.size() >i){
        //     rect(temp_prev.get(i-1)[0],temp_prev.get(i-1)[1], dimension, dimension);
        //     prevpos.add(new Integer []{temp_prev.get(i-1)[0], temp_prev.get(i-1)[1]}); //occupy previous position
       
        //}
            rect(temp_prev.get(i-1)[0],temp_prev.get(i-1)[1], dimension, dimension);
             prevpos.add(new Integer []{temp_prev.get(i-1)[0], temp_prev.get(i-1)[1]}); //occupy previous position
       //start_y-=dimension;
      }
    }
    
  }
  
}
