#include "Stock.h"
#include "Drink.h"
    
using vending::Stock;

Stock::Stock()
: quantityOfCoke_(0)
, quantityOfDietCoke_(0)
, quantityOfTea_(0)
{
}

Stock::~Stock()
{
}

bool Stock::hasDrink(vending::DrinkType kindOfDrink)
{
    switch (kindOfDrink)
    {
    case vending::COKE:
        return quantityOfCoke_ > 0;
    case vending::DIET_COKE:
        return quantityOfDietCoke_ > 0;
    case vending::TEA:
        return quantityOfTea_ > 0;
    default:
        return false;
    }
}

void Stock::incleaseDrink(vending::DrinkType kindOfDrink, int quantity)
{
    switch (kindOfDrink)
    {
    case vending::COKE:
        quantityOfCoke_ += quantity;
        break;
    case vending::DIET_COKE:
        quantityOfDietCoke_+= quantity;
        break;
    case vending::TEA:
        quantityOfTea_+= quantity;
        break;
    default:
        return;
    }
}

void Stock::decreaseDrink(vending::DrinkType kindOfDrink)
{
    switch (kindOfDrink)
    {
    case vending::COKE:
        quantityOfCoke_--;
        break;
    case vending::DIET_COKE:
        quantityOfDietCoke_--;
        break;
    case vending::TEA:
        quantityOfTea_--;
        break;
    default:
        return;
    }
}
