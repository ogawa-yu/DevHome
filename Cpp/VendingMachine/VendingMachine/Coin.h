#ifndef COIN_H
#define COIN_H

namespace vending 
{
    typedef int Value;
    class  Coin
    {

    public:
        /**
         * �R���X�g���N�^
         * @param[in] value 
         */
        Coin(Value value = 0);

        /**
         * �f�X�g���N�^
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
