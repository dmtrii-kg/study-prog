//
//  main.cpp
//  test5
//
//  Created by dmtrii on 24.09.2020.
//  Copyright © 2020 dmtrii. All rights reserved.
//

#include <iostream>
using namespace std;

class motor {
public:
    void switchIgnition() {
        cout << "Ignition ON\n";
    }
    
    void pumpFuel() {
        cout << "Fuel is cylinders\n";
    }
    
    void fireCylinders() {
        cout << "Vrooom\n";
    }
};

class car: protected motor {
public:
    void move() {
        switchIgnition();
        pumpFuel();
        fireCylinders();
    }
};

class superCar: protected car {
public:
    void move() {
        switchIgnition();
        pumpFuel();
        fireCylinders();
        fireCylinders();
        fireCylinders();
    }
};

int main(int argc, const char * argv[]) {
    superCar myCar;
    myCar.move();
    
    return 0;
}
