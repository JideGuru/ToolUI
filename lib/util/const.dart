class Constants{

  static double getRadius(double height, double width){

    double c = height/2;
    double d = width*width;
    double e = height*8;
    double f = d/e;
    double r = c+f;
    return r;
  }

}