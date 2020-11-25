//
//  main.cpp
//  test 6 (operator)
//
//  Created by dmtrii on 01.10.2020.
//  Copyright © 2020 dmtrii. All rights reserved.
//

#include <iostream>
#include <sstream>
#include <string>
using namespace std;

class date {
private:
    int day_;
    int month_;
    int year_;
    string dateInString;

public:
    date (int day, int month, int year) : day_ (day), month_ (month), year_ (year) {};
    
    date& operator ++ () {
        ++day_;
        return *this;
    }
    
    date& operator -- () {
        --day_;
        return *this;
    }
    
    date operator ++ (int) {
        date copy (day_, month_, year_);
        ++day_;
        return copy;
    }
    
    date operator -- (int) {
        date copy (day_, month_, year_);
        --day_;
        return copy;
    }
    
    date operator + (int day) {
        return date(day_ + day, month_, year_);
    }
    
    date operator - (int day) {
        return date(day_ - day, month_, year_);
    }
    
    void operator += (int day) {
        day_ += day;
    }
    
    void operator -= (int day) {
        day_ -= day;
    }
    
    // operators *=, /=, %=, <<=, >>=, ^=, |=, &= also implemented
    
    bool operator == (const date& compareTo) {
        return ((day_ == compareTo.day_) && (month_ == compareTo.month_) && (year_ == compareTo.year_));
    }
    
    bool operator != (const date& compareTo) {
        return !(this -> operator==(compareTo));
    }
    
    bool operator < (const date& compareTo) {
        if (year_ < compareTo.year_) {
            return true;
        } else if (month_ < compareTo.month_) {
            return true;
        } else if (day_ < compareTo.day_) {
            return true;
        } else {
            return false;
        }
    }
    
    bool operator <= (const date& compareTo) {
        if (this -> operator==(compareTo)) {
            return true;
        } else {
            return this -> operator<(compareTo);
        }
    }
    
    bool operator > (const date& compareTo) {
        return !(this -> operator<=(compareTo));
    }
    
    bool operator >= (const date& compareTo) {
        if (this -> operator==(compareTo)) {
            return true;
        } else {
            return this -> operator>(compareTo);
        }
    }
    
    operator const char* () {
        ostringstream formattedDate;
        formattedDate << day_ << " / " << month_ << " / " << year_;
        dateInString = formattedDate.str();
        return dateInString.c_str();
    }
        
    void displayDate() {
        cout << day_ << " / " << month_ << " / " << year_ << endl;
    }
};

int main(int argc, const char * argv[]) {
//    base operations on date
    date holiday (13, 06, 1998);
    cout << holiday << endl;

    ++holiday;
    cout << holiday << endl;

    --holiday;
    --holiday;
    cout << holiday << endl;
        
    date nextHoliday (holiday + 5);
    cout << nextHoliday << endl;
        
    nextHoliday += 3;
    cout << nextHoliday << endl;
        
    if (holiday == nextHoliday) {
        cout << "operator == : two holiday the same\n";
    } else {
        cout << "operator == : two holidays not same\n";
    }
    
    if (holiday != nextHoliday) {
        cout << "operator != : two holiday not same\n";
    } else {
        cout << "operator != : two holiday the same\n";
    }

//        use smart pointer
//        unique_ptr<int> pDynamicAllocInteger(new int);
//        *pDynamicAllocInteger = 42;
//        cout << "Integer value is: " << pDynamicAllocInteger << endl;
//
//        unique_ptr<date> pHoliday (new date(13, 06, 1998));
//        pHoliday -> displayDate();
//        cout << "The new instance of date contains: " << *pHoliday << endl;
    
    return 0;
}
