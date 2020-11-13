#include "myMath.h"
#define E 2.718281

double Exponent(int x){
    return Power(E, x);
}

double Power(double x , int y) {
    if (y<0){
        y=-y;
        x = 1/x;
    }
    double outcome = 1;
    for (int i = 0; i < y; ++i)
        outcome*=x;
    return outcome;
}