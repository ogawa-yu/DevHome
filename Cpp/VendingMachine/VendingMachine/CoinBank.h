// $Id$
///////////////////////////////////////////////////////////////////////////////
/**
 * @file  CoinBank.h
 * @brief Implementation of the Class CoinBank
 */
///////////////////////////////////////////////////////////////////////////////
//              Copyright (c) 2017 Tokyo Electron Limited.
//                         All rights reserved.
///////////////////////////////////////////////////////////////////////////////

#if !defined(VENDING_COIN_BANK__INCLUDED_)
#define VENDING_COIN_BANK__INCLUDED_

#include <vector>
#include "Coin.h"

namespace vending
{

    /**
     * ã‡å…
     */
    class CoinBank
    {
    public:
        CoinBank(int numberOf100yen, int numberOf500yen);

        ~CoinBank();

        bool canUse(vending::Coin coin) const;

        std::vector<vending::Coin> stockCoin(vending::Coin coin);

    private:
        CoinBank(const CoinBank& aOther);
        CoinBank& operator=(const CoinBank& aOther);

        void remove(std::vector<Coin>& storage, int coint);
    private:
        /**
         * 100â~ÇÃç›å…(ñáêî)
         */
        std::vector<Coin> storage100Yen_;

        /**
         * 500â~ÇÃç›å…(ñáêî)
         */
        std::vector<Coin> storage500Yen_;
    };
}

#endif //!defined(VENDING_COIN_BANK__INCLUDED_)

