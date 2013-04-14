#include "Vector2.h"
#include <cmath>

using namespace std;


Vector2::Vector2(float nx, float ny)
    : x {nx}
    , y {ny}
{
}


float Vector2::distanceFrom(float dx, float dy) {
    return sqrt( (x - dx)*(x - dx) + (y - dy)*(y - dy) );
}

void Vector2::setCoords(float nx, float ny){

            this->x=nx;
            this->y=ny;

}



