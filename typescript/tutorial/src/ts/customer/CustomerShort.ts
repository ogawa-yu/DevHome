import State from './state'
import ICustomerShort from './ICustomerShort'

class CustomerShort implements ICustomerShort {
  id_ : number;
  constructor(id_: number, private fileName_: string, private state_: State) {
    this.id_ = id_;
  }

  public calculateDiscount(): number {
    return 100;
  }

  public dump($elem: HTMLElement): void {
    $elem.innerHTML += 'ID:' + this.id_ + ' File:' + this.fileName_ + ' State:' + this.state_ + '</br>';
  }

  private updateStatus(status: State): State {
    if (this.canMoveState(status)) {
      this.state_ = status;
      return this.state_;
    }
    return status;
  }

  private canMoveState(status: State): boolean {
    switch(status) {
      case State.NEW:
        return this.state_ !== State.IN_CART;
      case State.IN_CART:
        return this.state_ !== State.REQUESTED;
      default:
        return true;
    }
 }
}
export default CustomerShort;
