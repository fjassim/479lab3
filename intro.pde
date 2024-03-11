void intro_draw(){
  background(173, 216, 230); // RGB values for light blue
  textSize(28);
  text("SNAKE GAME",250,40);
  fill(0);
  textSize(24);
  textAlign(CENTER);
  
  //GButton startBtn;
  startBtn.setText("START");
  startBtn.addEventHandler(this,"startGame");
  startBtn.setLocalColorScheme(GCScheme.RED_SCHEME);
  startBtn.setTextBold();
  pushStyle();
}

public void startGame(GButton button, GEvent event){
  if(event == GEvent.CLICKED){
    tab="Play";
    println("game started\n");
  }
}
