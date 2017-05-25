#include "Drink.h"

namespace vending
{
    class Stock
    {
    public:
        /**
         * �R���X�g���N�^
         */
        Stock();

        /**
         * �f�X�g���N�^
         */
        ~Stock();

        /**
         * �݌ɂ����邩�m�F����
         * @param[in] kindOfDrink ���ݕ��̎��
         * @retval true ���ݕ�������
         * @retval false ���ݕ����Ȃ�
         */
        bool hasDrink(vending::DrinkType kindOfDrink);

        /**
         * �݌ɂ��[����
         * @param[in] kindOfDrink ���ݕ��̎��
         * @param[in] quantity ��[���鐔
         */
        void incleaseDrink(vending::DrinkType kindOfDrink, int quantity);

        /**
         * �݌ɂ����炷(���ݕ��𔄂�)
         * @param[in] kindOfDrink ���ݕ��̎��
         */
        void decreaseDrink(vending::DrinkType kindOfDrink);

    private:
        /**
         * �R�[���̍݌ɐ�
         */
        int quantityOfCoke_;

        /**
         * �_�C�G�b�g�R�[���̍݌ɐ�
         */
        int quantityOfDietCoke_;

        /**
         * �����̍݌ɐ�
         */
        int quantityOfTea_;
        
    };
}
