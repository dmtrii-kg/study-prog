//
//  main.cpp
//  test7 (vector)
//
//  Created by dmtrii on 23.11.2020.
//  Copyright © 2020 dmtrii. All rights reserved.
//

#include <iostream>
#include <string>
#include <vector>
#include <deque>
#include <list>
#include <algorithm>
using namespace std;

template <typename T>
void displayElements(const T& input) {
    for (auto i = input.cbegin(); i != input.cend(); ++i) {
        size_t pos = distance(input.cbegin(), i);
        cout << "Elements [" << pos << "] = ";
        cout << *i << endl;
    }
}

struct contactItem {
    string contactName_;
    string contactPhone_;
    string contactRepresentation_;
    
    contactItem(const string& contactName, const string& contactPhone) {
        contactName_ = contactName;
        contactPhone_ = contactPhone;
        contactRepresentation_ = (contactName_ + ": " + contactPhone_);
    }
    
    bool operator == (const contactItem& itemToCompare) const {
        return (itemToCompare.contactName_ == this->contactName_);
    }
    
    bool operator < (const contactItem& itemToCompare) const {
        return (itemToCompare.contactPhone_ < this->contactPhone_);
    }
    
    operator const char* () const {
        return contactRepresentation_.c_str();
    }
};

bool sortPhoneNumber (const contactItem item1, const contactItem item2) {
    return (item1.contactPhone_ < item2.contactPhone_);
}

int main(int argc, const char * argv[]) {

//    // DEQUE
//    deque<int> dqInt;
//
//    dqInt.push_back(4);
//    dqInt.push_back(5);
//    dqInt.push_back(6);
//
//    dqInt.push_front(3);
//    dqInt.push_front(2);
//    dqInt.push_front(1);
//
////    for (size_t nCount = 0; nCount < dqInt.size(); ++nCount) {
////        cout << "Elements [" << nCount << "] = ";
////        cout << dqInt[nCount] << endl;
////    }
//
//    dqInt.pop_back();
//    dqInt.pop_front();
//
////    displayElements(dqInt);
////    for (auto iElementLocator = dqInt.begin(); iElementLocator != dqInt.end(); ++iElementLocator) {
////        size_t position = distance(dqInt.begin(), iElementLocator);
////        cout << "Elements [" << position << "] = ";
////        cout << *iElementLocator << endl;
////    }
//
//    // LIST
////    list<int> listInt;
//    list<int> listInt4(4, 0);
////    list<int> listCopy(listInt4);
////    list<int> listDeque(dqInt.cbegin(), dqInt.cend());
//
//    listInt4.push_back(7);
//    displayElements(listInt4);
    
    // LIST BASED CLASS
    list<contactItem> contacts;
    contacts.push_back(contactItem("Dima K", "+79998886655"));
    contacts.push_front(contactItem("Polina F", "+75550004442211"));
    contacts.push_back(contactItem("Alex D", "+80009991144"));
    
    displayElements(contacts);
    
    contacts.sort();
    cout << "After sorting:\n";
    displayElements(contacts);
    
    contacts.sort(sortPhoneNumber);
    cout << "After sorting on phone number:\n";
    displayElements(contacts);
    
    contacts.remove(contactItem("Alex D", ""));
    cout << "After remove Alex:\n";
    displayElements(contacts);
    
    return 0;
}
