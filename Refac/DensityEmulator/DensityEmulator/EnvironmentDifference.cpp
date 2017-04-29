//
//  EnvironmentDifference.cpp
//  DensityEmulator
//
//  Created by 小川裕亮 on 2017/04/16.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#include "EnvironmentDifference.hpp"

using my::EnvironmentDiffenrence;

EnvironmentDiffenrence::EnvironmentDiffenrence(const my::Environment& previous,
                                            const my::Environment& current)
: previous_(previous)
, current_(current)
{
}

my::Temperature EnvironmentDifference::getTemperatureDiff() const noexcept
{
    return current_.temperature() - previous_.temperature();
}

my::Volume getVolumeDiff() const noexcept
{
}

my::Pressure getPressureDiff() const noexcept
{
    
}
