//
//  EnvironmentDifference.hpp
//  DensityEmulator
//
//  Created by 小川裕亮 on 2017/04/16.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#ifndef EnvironmentDifference_hpp
#define EnvironmentDifference_hpp

#include "Environment.hpp"

namespace my
{
    class EnvironmentDiffenrence
    {
    public:
        EnvironmentDiffenrence(const my::Environment& previous,
                               const my::Environment& current);
        ~EnvironmentDiffenrence() =default;
        EnvironmentDiffenrence(const EnvironmentDiffenrence&) =delete;
        EnvironmentDiffenrence& operator=(const EnvironmentDiffenrence&) =delete;
        
        my::Temperature getTemperatureDiff() const noexcept;
        my::Volume getVolumeDiff() const noexcept;
        my::Pressure getPressureDiff() const noexcept;
        
    private:
        const my::Environment previous_;
        
        const my::Environment current_;
    };
}
#endif /* EnvironmentDifference_hpp */
