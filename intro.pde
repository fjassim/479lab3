void intro_draw(){
  background(173, 216, 230); // RGB values for light blue
  textSize(45);
  text("SNAKE GAME",350,80);
  fill(0,0,170);
  textAlign(CENTER);
  
  //GButton startBtn;
  image(snakeImg,250,130, 200, 200);
  startBtn.setText("START");
  startBtn.addEventHandler(this,"startGame");
  startBtn.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  startBtn.setTextBold();
  leaderboard.setText("LEADERBOARD");
  leaderboard.addEventHandler(this,"loadLeaderboard");
  leaderboard.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  leaderboard.setTextBold();
  pushStyle();
}

public void startGame(GButton button, GEvent event){
  if(event == GEvent.CLICKED){
    tab="Play";
    println("game started\n");
  }
}

public void loadLeaderboard(GButton button, GEvent event){
  if(event == GEvent.CLICKED){
    tab="Leaderboard";
    println("load leaderboard\n");
  }
}
