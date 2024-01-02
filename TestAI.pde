Maze maze; 
Population test;
PVector goal  = new PVector(280, 5);
void setup() {
    size(300, 400); //size of the window
    frameRate(100);//speed of the dots
    test = new Population(200);//create a new population with 1000 members
    maze = new Maze();
  }
  
 

 void draw() { 
    background(255);
  

    fill(255, 0, 0);
    ellipse(goal.x, goal.y, 10, 10);
  
   
    maze.createMaze();
  
    if (test.allDotsDead()) {
    
      test.calculateFitness();
      test.naturalSelection();
      test.mutateDemBabies();
    } else {
     
  
      test.update();
      test.show();
    }
  }
