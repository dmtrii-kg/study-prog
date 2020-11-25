//
//  main.cpp
//  test3
//
//  Created by dmtrii on 22.09.2020.
//  Copyright © 2020 dmtrii. All rights reserved.
//

#include <iostream>
using namespace std;

class myString {
private:
    char* buffer_;
    
    myString() : buffer_(NULL) {
        cout << "Вызван стандартный конструктор\n";
    }
    
public:
    // конструктор
    myString(const char* buffer) {
        cout << "myString создаётся стандартным конструктором\n";
        if (buffer != NULL) {
            buffer_ = new char[strlen(buffer) + 1];
            strcpy(buffer_, buffer);
        } else {
            buffer_ = NULL;
        }
    }
    
    // конструктор копирования
    myString(const myString& copySource) {
        cout << "myString создаётся конструктором копирования\n";
        if (copySource.buffer_ != NULL) {
            buffer_ = new char[strlen(copySource.buffer_) + 1];
            strcpy(buffer_, copySource.buffer_);
        } else {
            buffer_ = NULL;
        }
    }
    
    // конструктор перемещения
    myString(myString&& moveSource) {
        if (moveSource.buffer_ != NULL) {
            buffer_ = moveSource.buffer_;
            moveSource.buffer_ = NULL;
        }
    }
    
    // деструктор
    ~myString() {
        cout << "myString удаляется при помощи деструктора\n";
        if (buffer_ != NULL) {
            delete[] buffer_;
        }
    }
    
    myString operator + (const myString& addThis) {
        myString newString;
        if (addThis.buffer_ != NULL) {
            newString.buffer_ = new char[getLenght() + strlen(addThis.buffer_) + 1];
            strcpy(newString.buffer_, buffer_);
            strcat(newString.buffer_, addThis.buffer_);
        }
        return newString;
    }
    
    myString& operator = (const myString& copySource) {
        if ((this != &copySource) && (copySource.buffer_ != NULL)) {
            if (buffer_ != NULL)
                delete [] buffer_;
            buffer_ = new char [strlen(copySource.buffer_) + 1];
            strcpy(buffer_, copySource.buffer_);
        }
        return *this;
    }
    
    // конструктор присваивания при перемещении
    myString& operator = (myString&& moveSource) {
        if ((moveSource.buffer_ != NULL) && (this != &moveSource)) {
            delete buffer_;
            buffer_ = moveSource.buffer_;
            moveSource.buffer_ = NULL;
        }
        return *this;
    }
    
//    const char& operator [] (int index) const {     // 2-й const показывает что мы только считываем символы из строки
//        if (index < getLenght())
//            return buffer_[index];
//    }
    
    int getLenght() {
        return strlen(buffer_);
    }
    
    operator const char* () {
        return buffer_;
    }
    
//    const char* getString() {
//        return buffer_;
//    }
        
};

//void useMyString(myString input) {
//    cout << "Длинна строки в буфере " << input.getLenght() << " символа\n";
//    cout << "Содержимое буфера: " << input.getString() << endl;
//    return;
//}

int main(int argc, const char * argv[]) {
    
    myString string1("Привет ");
    myString string2("уёба");
    cout << string1 << string2 << endl;
    string2 = string1;
    cout << string1 << string2 << endl;
    
    return 0;
}
