

class CheckerSquare{
  float x,y;
  int size;
  
  CheckerSquare(float x, float y, int size){
    this.x = x;
    this.y = y;
    this.size = size;
  }
}

ArrayList<CheckerSquare> squares;
void createSquares(){
  //size(400,400);
  squares = new ArrayList<CheckerSquare>();
  int squareSize=50;
  for(int i = 0; i < height; i+=squareSize){
    for(int j = 0; j <width; j+=squareSize){
      CheckerSquare square = new CheckerSquare(j,i,squareSize);
      squares.add(square);
    }
  }
}



void play_draw(){
  pushStyle();
  background(255);
  fill(0);
  textSize(28);
  text("PLAY",100,50);
  textSize(24);
  textAlign(CENTER);
  createSquares();
  
  for(CheckerSquare square: squares){
    if((int((square.y/square.size) + (square.x / square.size))) % 2 == 0){
      fill(255,165,0);
    } else {
      fill(255,218,185);
    }
    rect(square.x, square.y, square.size, square.size);
  
  }
    //startBtn.moveTo(500,100);
    startBtn.setVisible(false);
    leaderboard.setVisible(false);

  pushStyle();
  
}
