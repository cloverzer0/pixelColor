PVector[] p=new PVector[50];
float start[][];
PVector distance[][];
int k=0;

void setup()
{
  size(600,600);
  start=new float[width][height];
  distance=new PVector[width][height];
    for(int x=0;x<width;x++)
  {
    for(int y=0;y<height;y++)
  {
    start[x][y]=width*height;
  }
}
}
void draw()
{
  background(100);
   for(int x=0;x<width;x++)
  {
    for(int y=0;y<height;y++)
  {
    for(int d=0;d<k;d++)
    {
      float dis=dist(x,y,p[d].x,p[d].y);
      if(dis<start[x][y])
      {
        start[x][y]=dis;
        distance[x][y]=new PVector(p[d].x,p[d].y);
      }
    }
  }
}
if(k>0)
{
  for(int x=0;x<width;x+=5)
  {
    for(int y=0;y<width;y+=5)
    {
      fill(0,10,66,12);
      //noStroke();
      //ellipse(distance[x][y].x,distance[x][y].y,x,y);
      line(x,y,distance[x][y].x,distance[x][y].y);
    }    
  }  
}
}

void mouseClicked()
{ 
    p[k]=new PVector(mouseX,mouseY);
    //ellipse(p[k].x,p[k].y,20,20);
    k++;
}
