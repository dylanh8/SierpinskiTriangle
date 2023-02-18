public void setup()
{
  noLoop();
  size(1000,1000);
}

public void draw()
{
  background(0,0,0);
  sierpinski(100,900,800, true);
 
}

public void sierpinski(int x, int y, int len, boolean shade)
{
  
  fill(255);
   stroke(255);
 
  if(len<=20){
    if(shade==true){
      fill(30);
      shade=false;
    }
    if(shade==false){
      fill(140);
      shade=true;
    }
    triangle(x,y,x+len,y,x+len/2,y-len);
   

  } else{
    sierpinski(x,y,len/2, shade);
    sierpinski(x+len/2,y,len/2, shade);
    sierpinski(x+len/4,y-len/2,len/2, shade);
  }
}
