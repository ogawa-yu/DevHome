//
//  main.cpp
//  Perf
//
//  Created by 小川裕亮 on 2017/03/18.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#include <iostream>
#include <cstdlib>
#include <functional>

namespace {

    int tarai(int x, int y, int z) {
        return (x <= y)
            ? y
            : tarai(tarai(x-1, y, z),
                    tarai(y-1, z, x),
                    tarai(z-1, x, y));
    }
    
    int tarai_lazy(int x, int y, int z) {
        std::function<int (const std::function<int()>&,
                           const std::function<int()>&,
                           const std::function<int()>&)> lt =
        [&lt] (const std::function<int()>& thunkX,
               const std::function<int()>& thunkY,
               const std::function<int()>& thunkZ) -> int {
            // サンクを評価
            const int t_x = thunkX();
            const int t_y = thunkY();
            if (t_x <= t_y) {
                return t_y;
            }
            const int t_z = thunkZ();
            auto c_x = [&t_x] { return t_x; };
            auto c_y = [&t_y] { return t_y; };
            auto c_z = [&t_z] { return t_z; };
            
            return lt([&] { return lt([&t_x] { return t_x - 1; }, c_y, c_z); },
                      [&] { return lt([&t_y] { return t_y - 1; }, c_z, c_x); },
                      [&] { return lt([&t_z] { return t_z - 1; }, c_x, c_y); });
        };
        return lt([=] { return x; }, [=] { return y; }, [=] { return z; });
    }
}

int main(int argc, const char * argv[]) {

    // 積極評価版たらい関数(引数x=20だと1minでも終わらず
    //std::cout << tarai(10, 5, 0) << std::endl;
    //std::cout << tarai(20, 10, 0) << std::endl;
    
    // 遅延評価版たらい関数
    std::cout << tarai_lazy(10, 5, 0) << std::endl;
    std::cout << tarai_lazy(20, 10, 0) << std::endl;
    
    return 0;
}
