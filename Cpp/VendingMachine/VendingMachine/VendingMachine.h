// $Id$ 
///////////////////////////////////////////////////////////////////////////////
/**
 * @file  VendingMachine.h
 * @brief Declaration of the Class VendingMachine
 * @version 
 * @e 1.0 17-1-2017
 */
///////////////////////////////////////////////////////////////////////////////
//              Copyright (c) 2017 Tokyo Electron Limited.
//                         All rights reserved.                  
///////////////////////////////////////////////////////////////////////////////
#if !defined(TINA_CE534419_CFC3_4fd6_AFA5_2C8F22C82171__INCLUDED_)
#define TINA_CE534419_CFC3_4fd6_AFA5_2C8F22C82171__INCLUDED_

#include <map>
#include <vector>
#include "Drink.h"
#include "Stock.h"
#include "Coin.h"
#include "Cacher.h"

namespace vending 
{
    /**
     * 自動販売機
     */
    class  VendingMachine
    {

    public:
        /**
         * デフォルトコンストラクタ
         */
        VendingMachine();

        /**
         * コンストラクタ
         */
        VendingMachine(int quantityOfCoke, int quantityOfDietCoke, int quantityOfTea, int numberOf100Yen );

        /**
         * デストラクタ
         */
        ~VendingMachine();

        /**
         * ジュースを購入する.
         *
         * @param i           投入金額. 100円と500円のみ受け付ける.
         * @param kindOfDrink ジュースの種類.
         *                    コーラ({@code Juice.COKE}),ダイエットコーラ({@code Juice.DIET_COKE},お茶({@code Juice.TEA})が指定できる.
         * @return 指定したジュース. 在庫不足や釣り銭不足で買えなかった場合は {@code null} が返される.
         */
        vending::Drink buy(vending::Coin coin, vending::DrinkType kindOfDrink);

        /**
         * お釣りを取り出す.
         *
         * @return お釣りの金額
         */
        vending::Value refund();

    private:
        VendingMachine(const VendingMachine& other);
        const VendingMachine& operator=(const VendingMachine& other);
    private:
        vending::Cacher cacher_;

        vending::Stock stock_;

    };
}
#endif // !defined(TINA_CE534419_CFC3_4fd6_AFA5_2C8F22C82171__INCLUDED_)
