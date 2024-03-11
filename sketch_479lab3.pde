import org.gicentre.utils.spatial.*;
import org.gicentre.utils.network.*;
import org.gicentre.utils.network.traer.physics.*;
import org.gicentre.utils.geom.*;
import org.gicentre.utils.move.*;
import org.gicentre.utils.stat.*;
import org.gicentre.utils.gui.*;
import org.gicentre.utils.colour.*;
import org.gicentre.utils.text.*;
import org.gicentre.utils.*;
import org.gicentre.utils.network.traer.animation.*;
import org.gicentre.utils.io.*;

import gifAnimation.*;

import g4p_controls.*;

import processing.serial.*;
import g4p_controls.GButton;
GButton startBtn;
GButton leaderboard;

Serial myPort;
String tab = "intro";
PImage snakeImg;

void setup(){
  startBtn= new GButton(this,280,360,160,60);
  leaderboard = new GButton(this, 280,420,160,60);
  snakeImg = loadImage("snakeImg.png");
  size(700,700);
  background(255);
  //myPort = new Serial(this,Serial.list()[0],115200);
  //myPort.bufferUntil('\n');
}

void draw(){
  if(tab=="intro"){
    intro_draw();
  } else if(tab=="Play"){
    play_draw();
  }
}
