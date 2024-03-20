String Score= "";
long interval = 500;
long start= 0;
//class CheckerSquare{
//  float x,y;
//  int size;
  
//  CheckerSquare(float x, float y, int size){
//    this.x = x;
//    this.y = y;
//    this.size = size;
//  }
//}

//ArrayList<CheckerSquare> squares;
//void createSquares(){
//  //size(400,400);
//  squares = new ArrayList<CheckerSquare>();
//  int squareSize=50;
//  for(int i = 0; i < height; i+=squareSize){
//    for(int j = 0; j <width; j+=squareSize){
//      CheckerSquare square = new CheckerSquare(j,i,squareSize);
//      squares.add(square);
//    }
//  }
  
//}



void play_draw(){
  pushStyle();
  background(173, 216, 230);
  fill(0);
  textSize(28);
  textSize(24);
  textAlign(CENTER);
  Score = "Score: "+ (game1.getScore());
  
  text(Score,50, 20);
  text("Highscore: "+ game1.getHighScore(),600, 20);
  stroke(0);
  fill(255,165,0);
  rect(50,50, 600, 600);
  
  stroke(255, 255, 0);
  fill(0);
  rect(65,65,570, 570);
  startBtn.moveTo(1000,1000);
  leaderboard.moveTo(1000,1000);
  stroke(0);
  fill(snake.player_color);
  snake.draw();
  if (millis()-start>= interval){
    if(snake.direction != -1){
      snake.move(snake.direction);
    }
    
    start= millis();
  }
  
  fill(food.eatable_color);
  food.draw();
  
  pushStyle();
  
}
