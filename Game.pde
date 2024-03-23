  int[]scores = {0,0,0};


class Game{
  int score;
  int highscore= 0;
  Game(){
    score = 0;
    highscore =0;
  }
  void setHighScore(int score) {
    highscore = max(score, highscore);
    scores[0]=highscore;
    if(score != highscore && score > scores[1]){
      scores[1] = score;
    } else if(score != highscore && score > scores[2]){
      scores[2] = score;
    }
    
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
