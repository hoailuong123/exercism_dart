class Triangle {
  bool triangle(double side1, double side2, double side3) {
    return side1 > 0 && side2 > 0 && side3 > 0 && 
           side1 + side2 >= side3 &&
           side2 + side3 >= side1 &&
           side1 + side3 >= side2;
  }

  bool equilateral(double side1, double side2, double side3) {
    return triangle(side1, side2, side3) && side1 == side2 && side2 == side3;
  }

  bool isosceles(double side1, double side2, double side3) {
    return triangle(side1, side2, side3) &&
           (side1 == side2 || side1 == side3 || side2 == side3);
  }

  bool scalene(double side1, double side2, double side3) {
    return triangle(side1, side2, side3) && 
           side1 != side2 && side1 != side3 && side2 != side3;
  }
}

void main() {
  final triangle = Triangle();

  final isEquilateral = triangle.equilateral(2, 2, 2);
  final isIsosceles1 = triangle.isosceles(3, 1, 1);
  final isIsosceles2 = triangle.isosceles(1, 3, 1);
  final isScalene = triangle.scalene(7, 3, 2);

  print("Is equilateral? $isEquilateral");
  print("Is isosceles? $isIsosceles1");
  print("Is isosceles? $isIsosceles2");
  print("Is scalene? $isScalene");
}
