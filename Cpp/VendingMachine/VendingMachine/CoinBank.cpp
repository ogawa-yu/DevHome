// $Id
///////////////////////////////////////////////////////////////////////////////
/**
 * @file  CoinBank.cpp
 * @brief Implementation of the Class CoinBank
 */
///////////////////////////////////////////////////////////////////////////////
//              Copyright (c) 2017 Tokyo Electron Limited.
//                         All rights reserved.
///////////////////////////////////////////////////////////////////////////////

#include "CoinBank.h"
namespace
{
    const vending::Coin COIN_100YEN(100);
}

using vending::CoinBank;

CoinBank::CoinBank(int numberOf100yen, int numberOf500yen)
    : storage100Yen_(numberOf100yen, vending::Coin(100))
    , storage500Yen_(numberOf500yen, vending::Coin(500))
{
}

CoinBank::~CoinBank()
{
}

bool CoinBank::canUse(vending::Coin coin) const
{
    if (coin == 100)    
    {
        return true;
    }
    return (coin== 500) && (4U <= storage100Yen_.size());
}

std::vector<vending::Coin> CoinBank::stockCoin(vending::Coin coin)
{
    std::vector<vending::Coin> result;
    switch (coin)
    {
    case 100:
        storage100Yen_.push_back(coin);
        break;
    case 500:
        storage500Yen_.push_back(coin);
        result.resize(4, COIN_100YEN);
        remove(storage100Yen_, 4);
        break;
    default:
        break;
    }
    return result;
}

void CoinBank::remove(std::vector<vending::Coin>& storage, int count)
{
    for (int i = 0; i < count; ++i)
    {
        storage.pop_back();
    }
}
