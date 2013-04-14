#ifndef DYNAMICLINE_H
#define DYNAMICLINE_H

template<class T>
/*! @class DynamicLine
    @brief Represents DynamicLine with two dynamically changed points.
*/
class DynamicLine {
public:

    /**
       * First point of type T.
       */
    T *p1 = nullptr;

    /**
       * Second point of type T.
       */
    T *p2 = nullptr;

    /**
       * Default constructor.
       * By default sets both points to 0.
       */
    DynamicLine () = default;

    /**
       * A constructor.
       * Takes two points.
       * @param v1 First point.
       * @param v2 second point.
       */
    DynamicLine(T *v1,T *v2): p1 {v1}, p2 {v2}{};

    /**
       * A copy-constructor.
       * Copies DynamicLines info.
       * @param l DynamicLine to make copy of.
       */
    DynamicLine(const DynamicLine& l): p1 {l.p1}, p2 {l.p2}{};

    /**
       * A = operator.
       * Copies DynamicLines info.
       * @param l DynamicLine to make copy of.
       */
    DynamicLine& operator= (const DynamicLine& l){
        p1=l.p1;
        p2=l.p2;
        return *this;
    };


    /**
       * Default destructor.
       * By default sets both points to 0.
       */
    ~DynamicLine(){
        T *p1=nullptr;
        T *p2=nullptr;
    };

};

#endif // DYNAMICLINE_H
