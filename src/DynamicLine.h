#ifndef DYNAMICLINE_H
#define DYNAMICLINE_H

template<class T>
class DynamicLine {
public:


    T *p1;


    T *p2;


    DynamicLine () = default;


    DynamicLine(T *v1,T *v2): p1 {v1}, p2 {v2}{};


    DynamicLine(const DynamicLine& l): p1 {l.p1}, p2 {l.p2}{};


    DynamicLine& operator= (const DynamicLine& l){
        p1=l.p1;
        p2=l.p2;
        return *this;
    };



    ~DynamicLine(){
        T *p1=nullptr;
        T *p2=nullptr;
    };

};

#endif // DYNAMICLINE_H

