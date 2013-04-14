#ifndef VECTOR2_H
#define VECTOR2_H

#include <iostream>
using std::ostream;

class Vector2 {

public:

    float x = 0;
    float y = 0;

    Vector2() = default;
    Vector2(float nx, float ny);
    float distanceFrom(float x, float y);

    void setCoords(float nx, float ny);

};

#endif
