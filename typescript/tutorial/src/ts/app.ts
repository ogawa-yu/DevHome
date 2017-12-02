import Item from './class'
import State from './customer/state'
import CustomerShort from './customer/CustomerShort'
import RadioButtonControl from './radio/radio_ctl'
import RadioItem from './radio/item'

interface HTMLElementEvent<T extends HTMLElement> extends Event {
  target: T;
}

var aBook = new Item('はじめてのTypeScript', 3980);
var elem = document.getElementById('output');

aBook.say(elem);

var csList: CustomerShort[] = [
  new CustomerShort(1, 'state is new', State.NEW),
  new CustomerShort(2, 'state is in cart', State.IN_CART),
  new CustomerShort(3, 'state is requested', State.REQUESTED)
];
csList.forEach(cs => cs.dump(elem));

var radioItems: RadioItem[] = [
  new RadioItem(1, 'hoge'),
  new RadioItem(2, 'fuga'),
  new RadioItem(3, 'piyo')
];

var radioElem = document.getElementById('radio_button');
radioItems.forEach(item => 
  radioElem.innerHTML += '<input type="radio" name="radio-ctl" value="' + item.getId() + '">' + item.getText());
var radioCtl = new RadioButtonControl(radioItems);
radioElem.addEventListener('click', function(event: HTMLElementEvent<HTMLInputElement>) {
  if (event.target.id === radioCtl.getSelected().toString()) {
    radioCtl.clearSelection(radioElem);
  }
  radioCtl.select(new RadioItem(parseInt(event.target.id), event.target.outerText));
  return;
});
