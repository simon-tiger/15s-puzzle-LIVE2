int cols = 4, rows = 4;
float scl = 600 / cols;
int[][] grid;

void setup() {
  size(600, 600);
  
  grid = new int[cols][rows];
  
  int value = 0;
  for (int[] col : grid) {
    for (int i = 0; i < col.length; i++) {
      value++;
      
      col[(value-1) % rows] = value;
    }
  }
  
  grid[3][1] = 15;
  grid[3][2] = 14;
  grid[3][3] = 0;
}

void draw() {
  background(255);
  
  int i = 0;
  int j = 0;
  for (int[] col : grid) {
    j = 0;
    for (int val : col) {
      fill(255);
      rect(j*scl, i*scl, scl, scl);
      textAlign(CENTER, CENTER);
      textSize(48);
      fill(0);
      
      if (val > 0) {
        text(val, j*scl + scl/2, i*scl + scl/2);
      }
      j++;
    }
    i++;
  }
}