//
//  Density.cpp
//  DensityEmulator
//
//  Created by 小川裕亮 on 2017/04/13.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#include "Density.hpp"

using my::Density;

Density::Density(O2Density density)
:density_(density)
{
}

Density& Density::operator+(const Density& rhs)
{
    density_ += rhs.density_;
    return *this;
}
