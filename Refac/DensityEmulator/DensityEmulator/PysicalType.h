//
//  PysicalType.h
//  DensityEmulator
//
//  Created by 小川裕亮 on 2017/04/16.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#ifndef PysicalType_h
#define PysicalType_h

#include <boost/operators.hpp>

namespace my
{
    // [Pa]単位
    class Pressure : private boost::operators<my::Pressure>
    {
        using Type = double;
    public:
        Pressure() =default;
        Pressure(Type pressure) : pressure_(pressure) {}
        ~Pressure() =default;
        Pressure(const Pressure&) =default;
        Pressure& operator=(const Pressure&) =default;
        Pressure& operator+=(const Pressure& rhs) { pressure_ += rhs.pressure_; return *this; }
        Pressure& operator-=(const Pressure& rhs) { pressure_ -= rhs.pressure_; return *this; }
        bool operator<(const Pressure& rhs) const { return pressure_ < rhs.pressure_; }
        operator Type() const { return pressure_; }
    private:
        Type pressure_;
    };
    // %単位
    class O2Density : private boost::operators<my::O2Density>
    {
        using Type = double;
    public:
        O2Density() =default;
        O2Density(Type density) : o2Density_(density) {}
        ~O2Density() =default;
        O2Density(const O2Density&) =default;
        O2Density& operator=(const O2Density&) =default;
        O2Density& operator+=(const O2Density& rhs) { o2Density_ += rhs.o2Density_; return *this; }
        O2Density& operator-=(const O2Density& rhs) { o2Density_ -= rhs.o2Density_; return *this; }
        bool operator<(const O2Density& rhs) const { return o2Density_ < rhs.o2Density_; }
        operator Type() const { return o2Density_; }
    private:
        Type o2Density_;
    };
    // m^3単位
    class Volume : private boost::operators<my::Volume>
    {
        using Type = double;
    public:
        Volume() =default;
        Volume(Type volume) : volume_(volume) {}
        ~Volume() =default;
        Volume(const Volume&) =default;
        Volume& operator=(const Volume&) =default;
        Volume& operator+=(const Volume& rhs) { volume_ += rhs.volume_; return *this; }
        Volume& operator-=(const Volume& rhs) { volume_ -= rhs.volume_; return *this; }
        bool operator<(const Volume& rhs) const { return volume_ < rhs.volume_; }
        operator Type() const { return volume_; }
    private:
        Type volume_;
    };
    
    // [K]単位
    class Temperature : private boost::operators<my::Temperature>
    {
        using Type = double;
    public:
        Temperature() =default;
        Temperature(Type temperature) : temperature_(temperature) {}
        ~Temperature() =default;
        Temperature(const Temperature&) =default;
        Temperature& operator=(const Temperature&) =default;
        Temperature& operator+=(const Temperature& rhs) { temperature_ += rhs.temperature_; return *this; }
        Temperature& operator-=(const Temperature& rhs) { temperature_ -= rhs.temperature_; return *this; }
        bool operator<(const Temperature& rhs) const { return temperature_ < rhs.temperature_; }
        operator Type() const { return temperature_; }
    private:
        Type temperature_;
    };

    // [mol]単位
    class Mol : private boost::operators<my::Mol>
    {
        using Type = double;
    public:
        Mol() = default;
        Mol(Type mol) : mol_(mol) {}
        ~Mol() =default;
        Mol(const Mol&) =default;
        Mol& operator=(const Mol&) =default;
        Mol& operator+=(const Mol& rhs) { mol_ += rhs.mol_; return *this; }
        Mol& operator-=(const Mol& rhs) { mol_ -= rhs.mol_; return *this; }
        bool operator<(const Mol& rhs) const { return mol_ < rhs.mol_; }
        operator Type() const { return mol_; }
    private:
        Type mol_;
    };

    // ガス種
    enum class GasType
    {
        O2,
        N2,
    };
    
    // 仕事[J]
    using Work = double;

}

#endif /* PysicalType_h */
