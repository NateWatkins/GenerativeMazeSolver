public class Maze{
  public ArrayList<Obstacle> Obstacles = new ArrayList<>();
  
  //a  (float)  x-coordinate of the rectangle by default
  //b  (float)  y-coordinate of the rectangle by default
  //c  (float)  width of the rectangle by default
  //d  (float)  height of the rectangle by default
  
  
  public void place(int a, int b, int c, int d){
    Obstacle temp = new Obstacle(a,b,c,d);
    Obstacles.add(temp);
    fill(0,0,255);
    rect(a,b,c,d);
  }
  

  public void createMaze(){
   place(120, 80, 100, 20);
  }
  
}
