#include <memory>
#include <utility>
#include <iostream>

int main() {
    std::unique_ptr<int> test = std::make_unique(100);
    std::cout << test.get() << std::endl;
    return 0;
}
