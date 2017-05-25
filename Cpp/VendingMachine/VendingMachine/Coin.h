#ifndef COIN_H
#define COIN_H

namespace vending 
{
    typedef int Value;
    class  Coin
    {

    public:
        /**
         * コンストラクタ
         * @param[in] value 
         */
        Coin(Value value = 0);

        /**
         * デストラクタ
         */
        virtual ~Coin();

        operator int()
        {
            return value_;
        }
    private:
        Value value_;
    };
}

#endif // COIN_H
