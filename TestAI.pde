Maze maze; 
Population test;
PVector goal  = new PVector(200, 5);
void setup() {
    size(400, 400); //size of the window
    frameRate(100);//increase this to make the dots go faster
    test = new Population(1000);//create a new population with 1000 members
    maze = new Maze();
  }
  
 

 void draw() { 
    background(255);
  
    //draw goal
    fill(255, 0, 0);
    ellipse(goal.x, goal.y, 10, 10);
  
    //draw obstacle(s)
    maze.createMaze();
  
    if (test.allDotsDead()) {
      //genetic algorithm
      test.calculateFitness();
      test.naturalSelection();
      test.mutateDemBabies();
    } else {
      //if any of the dots are still alive then update and then show them
  
      test.update();
      test.show();
    }
  }
