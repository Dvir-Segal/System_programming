#include <stdio.h>
#include "myMath.h"

  int main(){
      double x;
      printf("Please inset a real number:");
      scanf("%lf", &x);
      float outcome = sub(add(Exponent((int)x), Power(x, 3)), 2);
      printf("The value of f(𝑥) = 𝑒^𝑥 + 𝑥^3 − 2 at the point %0.4f is: %0.4f\n", x, outcome);
      outcome = add(mul(x, 3), mul(Power(x, 2), 2));
      printf("The value of f(𝑥) = 3x + 2X^2 at the point %0.4f is: %0.4f\n", x, outcome);
      outcome = sub(div(mul(Power(x, 3),4),5),mul(x, 2));
      printf("The value of f(𝑥) = (4x^3)/5 -2x  at the point %0.4f is: %0.4f\n", x, outcome);
      return 0;
  }

  