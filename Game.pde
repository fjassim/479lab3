class Game{
  int score;
  int highscore= 0;
  Game(){
    score = 0;
    highscore =0;
  }
  void setHighScore(int score) {
    highscore = max(score, highscore);
    
  }
  int getHighScore (){
    return highscore;
  }
  void setScore(int score){
    this.score = score;
  }
  int getScore(){
    return this.score;
  }
  void gameover(){
    setHighScore(this.score);
    
  }
  void restart(){
    score = 0;
    snake = new Player();
    food= new Eatables();
  }
}
