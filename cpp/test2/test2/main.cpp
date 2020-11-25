//
//  main.cpp
//  test2
//
//  Created by dmtrii on 21.09.2020.
//  Copyright © 2020 dmtrii. All rights reserved.
//

#include <iostream>
using namespace std;

class Human
{
private:
    int age_;
    string name_;
    
public:
    Human() {
        age_ = 0;
        cout << "Использование конструктора по умолчанию\n";
    }
    
    Human(string name) {
        age_ = 0;
        name_ = name;
        cout << "Испольльзование конструктора с параметром имени\n";
    }
    
    Human(string name, int age) :name_(name), age_(age) {
        age_ = age;
        name_ = name;
        cout << "Испольльзование конструктора с параметрами имени и возраста\n";
    }
    
    
    void setName(string name) {
        name_ = name;
    }
    
    void setAge(int age) {
        age_ = age;
    }
    
    void introduce() {
        cout << "I'm " << name_ << " and I'm " << age_ << " years old\n";
    }
};

int main(int argc, const char * argv[]) {
    
    Human man;
    man.setName("Dima");
    man.setAge(22);
    
    Human woman("Poly", 21);
//    woman.setName("Poly");
//    woman.setAge(19);
    
    man.introduce();
    woman.introduce();
    
    return 0;
}
