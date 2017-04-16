//
//  Gus.cpp
//  DensityEmulator
//
//  Created by 小川裕亮 on 2017/04/16.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#include "Gus.hpp"

using my::Gus;

Gus::Gus(const my::Mol& mol)
:mol_(mol)
{
}

const my::Mol& Gus::mol() const
{
    return mol_;
}
