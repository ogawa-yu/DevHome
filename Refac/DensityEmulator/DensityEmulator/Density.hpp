//
//  Density.hpp
//  DensityEmulator
//
//  Created by 小川裕亮 on 2017/04/13.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#ifndef Density_hpp
#define Density_hpp

#include "PysicalType.h"

namespace my
{
    class Density
    {
    public:
        Density(my::O2Density density);
        ~Density() =default;
        inline Density(const Density& rhs) =default;
        Density& operator=(const Density& rhs) =default;
        Density& operator+(const Density& rhs);
    private:
        /**
         * 空間内のO2濃度
         */
        O2Density density_;
    };
}

#endif /* Density_hpp */
