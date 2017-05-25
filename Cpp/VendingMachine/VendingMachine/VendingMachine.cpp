// $Id$ 
///////////////////////////////////////////////////////////////////////////////
/**
 * @file  VendingMachine.cpp 
 * @brief Implementation of the Class VendingMachine
 * @version 
 * @e 1.0 17-1-2017
 */
///////////////////////////////////////////////////////////////////////////////
//              Copyright (c) 2017 Tokyo Electron Limited.
//                         All rights reserved.                  
///////////////////////////////////////////////////////////////////////////////
#include <numeric>
#include "VendingMachine.h"

using vending::VendingMachine;

VendingMachine::VendingMachine()
    : cacher_(0, 0)
{
}

VendingMachine::VendingMachine(int quantityOfCoke, int quantityOfDietCoke, int quantityOfTea, int numberOf100Yen)
    : cacher_(numberOf100Yen, 0)
{
    stock_.incleaseDrink(vending::COKE, quantityOfCoke);
    stock_.incleaseDrink(vending::DIET_COKE, quantityOfDietCoke);
    stock_.incleaseDrink(vending::TEA, quantityOfTea);
}

VendingMachine::~VendingMachine()
{
}

vending::Drink VendingMachine::buy(vending::Coin coin, vending::DrinkType kindOfDrink)
{
    if (!cacher_.canUse(coin) || !stock_.hasDrink(kindOfDrink))
    {
        cacher_.charge(coin);
        return vending::Drink();
    }
    cacher_.cache(coin);
    stock_.decreaseDrink(kindOfDrink);
    return Drink(kindOfDrink);
}

vending::Value VendingMachine::refund()
{
    std::vector<vending::Coin> refund = cacher_.refund();
    return std::accumulate(refund.begin(), refund.end(), 0);
}
