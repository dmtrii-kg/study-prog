//
//  main.cpp
//  test1
//
//  Created by dmtrii on 11.09.2020.
//  Copyright © 2020 dmtrii. All rights reserved.
//

#include <iostream>
#include <string>

// finding the maximum element using pointers
bool max_element (int * p, int * q, int ** res) {
	if (p == q)
        return false;
    *res = p;
	for (; p != q; ++p)
		if (*p > **res)
			*res = p;
	return true;
}

// gluing two lines
void strcatt (char *to, const char *from) {
    for (; *to != '\0'; ++to);
    for (; *from != '\0'; *to++, *from++) {
        *to = *from;
    }
    *to = '\0';
}

// search for a substring in a string
int strrr (const char *text, const char *pattern) {
    if (*pattern == '\0')
        return 0;
    if (*text == '\0')
        return -1;
    int cnt = 0;
    int tmp = 0;
    for (; *text != '\0'; text++) {
        cnt++;
        if (*text == *pattern) {
            pattern++;
            cnt--;
            tmp++;
            if (*pattern == '\0') break;
        } else {
            pattern = pattern - tmp;
            text = text - tmp;
            tmp = 0;
        }
    }
    if (*pattern != '\0')
        cnt = -1;

    return cnt;
}

int main(int argc, const char * argv[]) {
    
//    max elem
//    int m[10] = {1, 2, 30, 4, 5, 7, 8, 9, 10, 6};
//    int * pmax = 0;
//    if (max_element(m, m + 10, &pmax))
//    std::cout << "Maximum = " << *pmax << std::endl;
    
//    strstr
//    char a[6] = "13435";
//    char b[3] = "35";
//    int x = strrr(a, b);
//    std::cout << "Answer: " << x << std::endl;

//    strcat
//    strcatt(a, b);
//    std::cout << a << std::endl;

    
//    int age = 30;
//    double pi = 3.1415;
//    char sayYes = 'y';
//
//    int* pInt = &age;
//    double* pPi = &pi;
//    char* pSayYes = &sayYes;
//
//    std::cout << "sizeof fundamental types:" << std::endl;
//    std::cout << "sizeof(int) = " << sizeof(int) << std::endl;
//    std::cout << "sizeof(double) = " << sizeof(double) << std::endl;
//    std::cout << "sizeof(char) = " << sizeof(char) << std::endl;
//    std::cout << "sizeof pointers to fundamental types:" << std::endl;
//    std::cout << "sizeof(pint) = " << sizeof(pInt) << std::endl;
//    std::cout << "sizeof(pDouble) = " << sizeof(pPi) << std::endl;
//    std::cout << "sizeof(pChar) = " << sizeof(pSayYes) << std::endl;
    
//    int imputNum = 0;
//    std::cin >> imputNum;
//
//    int* pNumbers = new int [imputNum];
//    int* pCopy = pNumbers;
//
//    std::cout << "add " << imputNum << " integer numbers" << std::endl;
//    for (int i = 1; i <= imputNum; i++) {
//        std::cout << "Enter number " << i << ": ";
//        std::cin >> *(pNumbers + i);
//    }
//
//    std::cout << "Displaing all numbers:\n";
//    for (int i = 0; i < imputNum; ++i) {
//        std::cout << *(pCopy++) << " ";
//    }
//    std::cout << std::endl;
//
//    delete [] pNumbers;]
    
//    int i = 0;
//    int k = i++;
//    std::cout << "i = " << i << std::endl;
//    std::cout << "k = " << k << std::endl;
//    int n = ++i;
//    std::cout << "i = " << i << std::endl;
//    std::cout << "n = " << n << std::endl;
    
    int age = 30;
    std::cout << &age << std::endl;
    
	return 0;
}
