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
    class Gas
    {
    public:
        Gas(const GasType& type, const my::Mol& mol);
        ~Gas() =default;
        Gas(const Gas& rhs) =default;
        Gas& operator=(const Gas& rhs) =default;
        Gas& operator+=(const Gas& rhs) { mol_ += rhs.mol_; return *this; }
        Gas& operator-=(const Gas& rhs) { mol_ -= rhs.mol_; return *this; }
        const GasType& type() const noexcept;
        const my::Mol& mol() const noexcept;
    private:
        my::GasType type_;
        my::Mol mol_;
    };
}

#endif /* Gus_hpp */
