//
//  main.cpp
//  test4
//
//  Created by dmtrii on 23.09.2020.
//  Copyright © 2020 dmtrii. All rights reserved.
//

#include <iostream>
using namespace std;

class fish {
public:
    virtual fish* clone() = 0;
    virtual void swim() = 0;
};

class tuna : public fish {
public:
    fish* clone() {
        return new tuna(*this);
    }
    
    void swim() {
        cout << "Tuna swims!\n";
    }
};

class carp : public fish {
public:
    fish* clone() {
        return new carp(*this);
    }
    
    void swim() {
        cout << "Carp swims!\n";
    }
};

void makeFishSwimAgain(fish& myFish) {
    myFish.swim();
}

int main(int argc, const char * argv[]) {
    const int ARRAY_SIZE = 4;
    
    fish* myFishes[ARRAY_SIZE] = {NULL};
    myFishes[0] = new tuna();
    myFishes[1] = new carp();
    myFishes[2] = new tuna();
    myFishes[3] = new carp();
    
    fish* myNewFishes[ARRAY_SIZE];
    for (int i = 0; i < ARRAY_SIZE; i++) {
        myNewFishes[i] = myFishes[i] -> clone();
    }
    
    for (int i = 0; i < ARRAY_SIZE; i++) {
        myNewFishes[i] -> swim();
    }
    
    for (int i = 0; i < ARRAY_SIZE; i++) {
        delete myFishes[i];
        delete myNewFishes[i];
    }
    
//    tuna tuna;
//    carp carp;
//    makeFishSwimAgain(tuna);
//    makeFishSwimAgain(carp);
    
    return 0;
}
