void setup(){
  noStroke();
  size(1000,1000,P3D);
}

void mawaru(float s,float r,float radius,float size,float bure){
  translate(cos(s)*radius,sin(s)*bure,sin(s)*radius);
  sphere(r*size);
  translate(-cos(s)*radius,-sin(s)*bure,-sin(s)*radius);
}
int i;
float r=10,x=0,y=0,z=0,s1=0,s2=0,s3=0,p;
float[] b={25,-30,10},ra={160,270,400};
void draw(){
  lights();
  background(0,255,0);
  translate(500,500,0);
  fill(200,0,0);
  sphere(80);
  /*for(i=0;i<3;i++){
    for(p=0;p<2*PI;p=p+PI/360){
      translate(cos(p)*ra[i],sin(p)*b[i],sin(p)*ra[i]);
      fill(255);
      sphere(2);
      translate(-cos(p)*ra[i],-sin(p)*b[i],-sin(p)*ra[i]);
    }
  }*/ //kidou
  fill(0,100,255);
  mawaru(s1,r,ra[0],1,b[0]);
  fill(255,150,0);
  mawaru(s2,r,ra[1],3,b[1]);
  fill(100,10,150);
  mawaru(s3,r,ra[2],1.5,b[2]);
  s1=s1+PI/150;
  s2=s2+PI/120;
  s3=s3+PI/100;
  if(s1>2*PI) s1=0;
  if(s2>2*PI) s2=0;
  if(s3>2*PI) s3=0;
}