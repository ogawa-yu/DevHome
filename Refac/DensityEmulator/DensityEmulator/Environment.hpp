//
//  Environment.hpp
//  DensityEmulator
//
//  Created by 小川裕亮 on 2017/04/16.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#ifndef Environment_hpp
#define Environment_hpp

#include <vector>
#include "PysicalType.h"
#include "Gas.hpp"

namespace my
{
    /**
     * 任意の空間内の雰囲気を表すクラス
     * 体積一定の空間を想定している。
     */
    class Environment
    {
    public:
        Environment(const my::Pressure& pressure,
                    const my::Volume& volume,
                    const my::Temperature& temperature,
                    std::vector<my::Gas> gas = std::vector<my::Gas>());
        ~Environment() =default;
        inline Environment(const Environment& rhs) =default;
        Environment& operator=(const Environment& rhs) =default;
        Environment compress(const my::Volume& volume) const;
        Environment diff(const Environment& previous) const;
        void addGas(const my::Gas& gas);
        
        void raiseTemperatureBy(const my::Temperature& temperature);
        
        void printEnvironmet();

        my::Work getWork() const;
    private:
        void changeState(const my::Temperature& temperature);
        
        void changeState(const my::Pressure& pressure);

    private:
        my::Volume volume_;

        my::Pressure pressure_;
        
        my::Temperature temperature_;
        
        std::vector<my::Gas> gas_;
    };
}

#endif /* Environment_hpp */
