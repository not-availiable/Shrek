public class Thing { 
  // x and y are the center of the object
  private float x, y, w, h;
  private float angle;
  private PImage img;
  private String dataText = "";
  
  public Thing() {
    x = width/2;
    y = height/2;
    w = 50;
    h = 50;
    angle = 0;
    img = loadImage("Untitled.jpeg");
  }
  
  public float getX() {
    return x;
  }
  
  public float getY() {
    return x;
  }
  
  public void setX(float x) {
    this.x = x;
  }
  
  public void setY(float y) {
    this.y = y;
  }
  
  public void setAngle(float angle) {
    this.angle = angle;
  }
  
  public void display() {
    pushMatrix();
    translate(x, y);
    rotate(angle*PI/180);
    image(img, 0, 0, w, h);
    popMatrix();
  }
  
  public void updateData(String[] dataPoints, String[] dataNames) {
    dataText = "";
    for (int i = 0; i < dataPoints.length; i++) {
      dataText += dataNames[i] + ": " + dataPoints[i] +  (i < dataPoints.length - 1 ? " | " : "");
    }
  }
  
  public void showData() {
    fill(255);
    textSize(30);
    text(dataText, 0, 30);
  }
}
