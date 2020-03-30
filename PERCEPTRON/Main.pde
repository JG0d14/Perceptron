  Perceptron p;
  Point[] points = new Point[3];
  
  void setup() {
    p = new Perceptron();
    
    for (int i= 0; i< points.length; i++){
      points[i] = new Point();
    }
    
    float[] inputs = {1, 1, -1, -1, -1, 1};
    int salida = p.salida(inputs);
    println(salida);
  }
  
void draw(){
  background(255);
  stroke(0);
  line(0,0,width,height);
  for(Point pt : points){
    pt.show();
  }
  
  for (Point pt : points){
    float [] inputs = {pt.x, pt.y};
    int target = pt.label;
    int guess = p.salida(inputs);
    if (guess == target){
      fill (0,255,0);
    } else {
      fill(255, 0, 0);
    }
    noStroke();
    ellipse(pt.x, pt.y, 16, 16);
  }
}

void mousePressed(){
  for (Point pt : points){
    float [] inputs = {pt.x, pt.y};
    int target = pt.label;
    p.train(inputs, target);
  }
}


  public void settings() {
  size(600, 600);
}
