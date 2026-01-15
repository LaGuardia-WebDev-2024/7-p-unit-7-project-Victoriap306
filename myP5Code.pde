//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var leftX = 150;
var sunRadius = 100;
var RightX=100;


//🟢Draw Procedure - Runs on Repeat
draw = function(){
    noStroke()

  background(255,255,255,0);

  // sun
  fill(255,170,0);
  ellipse(400, 50, sunRadius, sunRadius);
 
  // left cloud in the sky 
  fill(255,255,255);
  ellipse(leftX, 40, 100, 60);
  ellipse(leftX+61, 45, 50, 35);
 
 // right flys in the sky
 fill(0,0,0)
 ellipse(RightX+100,10,10,10);
 ellipse(RightX-100,10,10,10,10);

 // box 
 fill(200,0,0)
 rect(100,400,100,100);


  leftX = leftX + 5;
  sunRadius = sunRadius - 2;
  RightX = RightX -2;



  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
