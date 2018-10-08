#include <iostream>

int main() {
    int val = 99;
    if (val < 100) {
        std::cout << "val less than 100." << std::endl;
        return -1;
    } else {
        std::cout << "val greater than 100." << std::endl;
        return 0;
    }
}
