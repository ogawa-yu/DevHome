// $Id$
///////////////////////////////////////////////////////////////////////////////
/**
 * @file  Chacher.h
 * @brief Implementation of the Class Chacher
 */
///////////////////////////////////////////////////////////////////////////////
//              Copyright (c) 2017 Tokyo Electron Limited.
//                         All rights reserved.
///////////////////////////////////////////////////////////////////////////////

#if !defined(VENDING_CHACHER__INCLUDED_)
#define VENDING_CHACHER__INCLUDED_

#include "CoinBank.h"

namespace vending
{
    class Cacher
    {
    public:
        Cacher(int numberOf100yen, int numberOf500yen);

        ~Cacher();

        bool canUse(vending::Coin coin) const;

        void charge(vending::Coin coin);

        void cache(vending::Coin coin);

        std::vector<vending::Coin> refund();
    private:
        Cacher(const Cacher& aOther);
        Cacher& operator=(const Cacher& aOther);

        void chargeBy500Yen();

        void chargeBy100Yen();
    private:
        vending::CoinBank bank_;

        std::vector<vending::Coin> charge_;
    };
}

#endif //!defined(VENDING_CHACHER__INCLUDED_)

