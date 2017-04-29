//
//  Gus.cpp
//  DensityEmulator
//
//  Created by 小川裕亮 on 2017/04/16.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#include "Gas.hpp"

using my::Gas;

Gas::Gas(const my::GasType& type, const my::Mol& mol)
: type_(type)
, mol_(mol)
{
}

const my::Mol& Gas::mol() const noexcept
{
    return mol_;
}

const my::GasType& Gas::type() const noexcept
{
    return type_;
}
