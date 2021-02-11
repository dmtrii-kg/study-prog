//
//  main.cpp
//  test8 (associative containers)
//
//  Created by dmtrii on 29.11.2020.
//  Copyright © 2020 dmtrii. All rights reserved.
//

#include <iostream>
#include <map>
#include <string>
using namespace std;

typedef map<int, string> MAP_INT_STRING;
typedef multimap<int, string> MMAP_INT_STRING;

template <typename T>
void displayContents (const T& input) {
    for (auto i = input.cbegin(); i != input.cend(); ++i) {
        cout << i->first << " -> " << i->second << endl;
    }
    cout << endl;
}

int main(int argc, const char * argv[]) {
    // MAP AND MULTIMAP
    MAP_INT_STRING mIntString;
    
    // CREATE ELEMENTS IN MAP
    mIntString.insert(MAP_INT_STRING::value_type (1, "one"));
    mIntString.insert(make_pair(3, "three"));
    mIntString.insert(pair<int, string> (2, "two"));
    mIntString[0] = "zero";
    
    displayContents(mIntString);
    
    // FIND IN MAP
    int key;
    cout << "Enter the key of the pair you want to find: ";
    cin >> key;
    auto iFindPair = mIntString.find(key);
    if (iFindPair != mIntString.cend()) {
        cout << "key " << iFindPair->first << " points to value: " << iFindPair->second << endl;
    } else {
        cout << "Sorry, pair with key " << key << " not in map" << endl;
    }
    
    // CREATE ELEMENTS IN MMAP
    MMAP_INT_STRING mmIntString (mIntString.cbegin(), mIntString.cend());
    mmIntString.insert(make_pair(3, "another three"));
    
    displayContents(mmIntString);
    cout << "The number of pairs in the multimap with 3 as their key: " << mmIntString.count(3) << endl;
    
    //FIND IN MMAP
    cout << "Enter the key of the pair you want to find in multimap: ";
    cin >> key;
    iFindPair = mmIntString.find(key);
    if (iFindPair != mmIntString.cend()) {
        size_t countPair = mmIntString.count(key);
        for (size_t counter = 0; counter < countPair; ++counter) {
            cout << "key " << iFindPair->first << ", value [" << counter << "] = " << iFindPair->second << endl;
            ++iFindPair;
        }
    } else {
        cout << "Sorry, pair with key " << key << " not in multimap" << endl;
    }
    
    return 0;
}
