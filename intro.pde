void intro_draw(){
  background(173, 216, 230); // RGB values for light blue
  textSize(28);
  text("SNAKE GAME",250,40);
  fill(0);
  textSize(24);
  textAlign(CENTER);
  
  GButton startBtn;
  startBtn= new GButton(this,200,80,100,40);
  startBtn.setText("Start Game");
  startBtn.addEventHandler(this,"startGame");
  startBtn.setLocalColorScheme(GCScheme.RED_SCHEME);
  pushStyle();
}

public void startGame(GButton button, GEvent event){
  if(event == GEvent.CLICKED){
    tab="Play";
    println("game started\n");
  }
}
