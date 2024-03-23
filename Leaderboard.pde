int numRows = 3;
String[] names = {"Player1", "Player2", "Player3"}; // Sample names, corresponding to scores


void leaderboard_draw() {
  textAlign(CENTER, CENTER);
  textSize(20);
  background(173, 216, 230); // RGB values for light blue
  startBtn.moveTo(1000,1000);
  leaderboard.moveTo(1000,1000);
  
    int totalHeight = 0;

  fill(0,0,170);
  textAlign(CENTER);
  textSize(45);
  text("LEADERBOARD",350,80);
  textSize(14);
  text("< Press b for back", 60, 25);
  
  textSize(38);
    fill(240, 170, 100); // Light orange color (RGB: 255, 200, 100)


  // Calculate dimensions
  
  rect(190,150,325,80);
  rect(210,250,275,70);
  rect(235,350,225,60);
  image(trophyImg,220,155, 70, 70);
  
  fill(200, 100, 0); // Orange color (RGB: 255, 165, 0)

  text(" " + scores[0],350,200);
  text(" " + scores[1],350,300);
  text(scores[2],350,390);
  
}
