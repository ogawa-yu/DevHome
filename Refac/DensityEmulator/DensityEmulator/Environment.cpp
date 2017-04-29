//
//  Environment.cpp
//  DensityEmulator
//
//  Created by 小川裕亮 on 2017/04/16.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#include <utility>
#include <functional>
#include <numeric>
#include <algorithm>
#include <iostream>
#include "Environment.hpp"

namespace
{
    const double R = 8.31451;
}

using my::Environment;

Environment::Environment(const my::Pressure& pressure,
                         const my::Volume& volume,
                         const my::Temperature& temperature,
                         std::vector<my::Gas> gas)
: pressure_(pressure)
, volume_(volume)
, temperature_(temperature)
, gas_(gas)
{
}

void Environment::addGas(const my::Gas& gas)
{
    auto it = std::find_if(std::begin(gas_), std::end(gas_),
                [gas](const my::Gas& g) { return g.type() == gas.type(); });
    if (it != gas_.end())
    {
        *it += gas;
        return;
    }
    gas_.push_back(gas);

}

Environment Environment::diff(const Environment& previous) const
{
    return Environment(pressure_ - previous.pressure_, volume_ - previous.volume_, temperature_ - temperature_, gas_);
}

void Environment::raiseTemperatureBy(const my::Temperature& temperature)
{
    temperature_ += temperature;
    changeState(temperature_);
}

void Environment::changeState(const my::Temperature& temperature)
{
    pressure_ = static_cast<my::Pressure>(R * std::accumulate(std::begin(gas_), std::end(gas_), 0.0, [](double init, const my::Gas& g) { return init + static_cast<double>(g.mol()); } ) / static_cast<double>(volume_) * static_cast<double>(temperature));
}

void Environment::changeState(const my::Pressure& pressure)
{
    
}

my::Work Environment::getWork() const
{
    return pressure_ * volume_;
}

void Environment::printEnvironmet()
{
    std::cout << "Pressure:" << pressure_ << "[Pa]" << std::endl
              << "Volume:" << volume_ << "[m^3]" << std::endl
              << "Temperature:" << temperature_ << "[K]" << std::endl << std::endl; 
}
