//
//  main.cpp
//  DensityEmulator
//
//  Created by 小川裕亮 on 2017/04/13.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#include <iostream>
#include "Environment.hpp"

int main(int argc, const char * argv[]) {

    my::Environment env(100.0, 10.0, 300.0);
    // ガスなし
    env.printEnvironmet();
    // O2 1mol1注入
    env.addGas(my::Gas(my::GasType::O2, 1.0));
    env.printEnvironmet();
    // 温度10[K]上昇
    env.raiseTemperatureBy(10.0);
    env.printEnvironmet();
    
    // N2 1mol注入
    env.addGas(my::Gas(my::GasType::N2, 1.0));
    env.printEnvironmet();
    return 0;
}
