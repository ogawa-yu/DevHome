#include "Drink.h"

namespace vending
{
    class Stock
    {
    public:
        /**
         * コンストラクタ
         */
        Stock();

        /**
         * デストラクタ
         */
        ~Stock();

        /**
         * 在庫があるか確認する
         * @param[in] kindOfDrink 飲み物の種類
         * @retval true 飲み物がある
         * @retval false 飲み物がない
         */
        bool hasDrink(vending::DrinkType kindOfDrink);

        /**
         * 在庫を補充する
         * @param[in] kindOfDrink 飲み物の種類
         * @param[in] quantity 補充する数
         */
        void incleaseDrink(vending::DrinkType kindOfDrink, int quantity);

        /**
         * 在庫を減らす(飲み物を売る)
         * @param[in] kindOfDrink 飲み物の種類
         */
        void decreaseDrink(vending::DrinkType kindOfDrink);

    private:
        /**
         * コーラの在庫数
         */
        int quantityOfCoke_;

        /**
         * ダイエットコーラの在庫数
         */
        int quantityOfDietCoke_;

        /**
         * お茶の在庫数
         */
        int quantityOfTea_;
        
    };
}
