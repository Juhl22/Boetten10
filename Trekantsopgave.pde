int n= floor(random(3, 10));
ArrayList <PVector> n_loc = new ArrayList<PVector>();
FloatList Area = new FloatList();
int counter =0;
PVector loc2;
PVector loc3;
PVector loc;
void setup() {
  size(200, 200);

  for (int i = 0; i<n; i++) {
    PVector loc = new PVector(random(width), random(height));
    n_loc.add(loc);
  }
}

void draw() {
  for (int i = 0; i<n_loc.size(); i++) {
    if (counter == 1) {
      loc = n_loc.get(i);
    } else if (counter ==  2) {
      loc2 = n_loc.get(i);
    } else if (counter == 3) {
      loc3 = n_loc.get(i);
    }
    if (counter > 4) {
      counter = 0;
    }
    if (counter == 3) {
      PVector AB =PVector.sub(loc, loc2);
      PVector AC =PVector.sub(loc, loc3);
      PVector cross = AB.cross(AC);
      float crossmag = 0.5*cross.mag();
      Area.append(crossmag);
    }
    counter++;
  }
  println(Area.max());
}
