//
//  EnergyEngine.hpp
//  DensityEmulator
//
//  Created by 小川裕亮 on 2017/04/16.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#ifndef EnergyEngine_hpp
#define EnergyEngine_hpp

#include "Environment.hpp"

namespace my
{
    class EnergyEngine
    {
    public:
        static Work calculateAbsoluteWork(const my::Environment& previous, const my::Environment& current);
        
        static Work calculateExternalWork();
    public:
        EnergyEngine() =delete;
        ~EnergyEngine() =delete;
        EnergyEngine(const EnergyEngine&) =delete;
        EnergyEngine& operator=(const EnergyEngine&) =delete;
    };
}
#endif /* EnergyEngine_hpp */
