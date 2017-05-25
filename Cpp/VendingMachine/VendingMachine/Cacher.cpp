// $Id$
///////////////////////////////////////////////////////////////////////////////
/**
 * @file  Chacher.cpp
 * @brief Implementation of the Class Chacher
 */
///////////////////////////////////////////////////////////////////////////////
//              Copyright (c) 2017 Tokyo Electron Limited.
//                         All rights reserved.
///////////////////////////////////////////////////////////////////////////////

#include "Cacher.h"

using vending::Cacher;

Cacher::Cacher(int numberOf100yen, int numberOf500yen)
    : bank_(numberOf100yen, numberOf500yen)
    , charge_()
{
}

Cacher::~Cacher()
{
}

bool Cacher::canUse(vending::Coin coin) const
{
    return bank_.canUse(coin);
}

void Cacher::charge(vending::Coin coin)
{
    charge_.push_back(coin);
}

void Cacher::cache(vending::Coin coin)
{
    std::vector<vending::Coin> charge = bank_.stockCoin(coin);
    charge_.insert(charge_.end(), charge.begin(), charge.end());
}

std::vector<vending::Coin> Cacher::refund()
{
    std::vector<vending::Coin> result = charge_;
    charge_.clear();
    return result;
}
