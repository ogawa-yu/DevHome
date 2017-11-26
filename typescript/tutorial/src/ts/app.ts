import Item from './class'
import State from './customer/state'
import CustomerShort from './customer/CustomerShort'

var aBook = new Item('はじめてのTypeScript', 3980);
var elem = document.getElementById('output');

aBook.say(elem);

var csList: CustomerShort[] = [
  new CustomerShort(1, 'state is new', State.NEW),
  new CustomerShort(2, 'state is in cart', State.IN_CART),
  new CustomerShort(3, 'state is requested', State.REQUESTED)
];
csList.forEach(cs => cs.dump(elem));