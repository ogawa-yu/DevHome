#include <iostream>

int fib(int n) {
    int f, f0 = 1, f1 = 1;
    while(n > 1) {
        n = n - 1;
        f = f0 + f1;
        f0 = f1;
        f1 = f;
    }
    return f;
}

int main() {
    int n = 9;

    while (n > 0) {
        std::cout << "fib(" << n << ")=" << fib(n) << std::endl;
        --n;
    }
    return 0;
}
