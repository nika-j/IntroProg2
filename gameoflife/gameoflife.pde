int dim = 20;
boolean [][] cells = new boolean [dim][dim];




void setup (){size(400,400); frameRate(10);losujKomorki(); noStroke();} 

void draw (){background(0); 

for (int row=0; row<dim; row++){
  for (int col=0; col<dim; col++){
    if (cells[col][row])fill(255); else fill(80);
  rect(width/dim * col, height/dim * row, width/dim, width/dim); 

}}
 }
 
 void losujKomorki(){
   for (int row=0; row<dim; row++){
     for (int col=0; col<dim; col++){
       cells[col][row] = losuj();
     }}}
     
boolean losuj (){
  float r = random (1000); if (r>500) return true; return false;}
  
  void keyPressed () {if (key=='q')losujKomorki();}
  
  
  
