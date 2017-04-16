//
//  Gus.hpp
//  DensityEmulator
//
//  Created by 小川裕亮 on 2017/04/16.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#ifndef Gus_hpp
#define Gus_hpp

#include "PysicalType.h"

namespace my
{
    class Gus
    {
    public:
        Gus(const my::Mol& mol);
        
        const my::Mol& mol() const;
    private:
        my::Mol mol_;
    };
}

#endif /* Gus_hpp */
