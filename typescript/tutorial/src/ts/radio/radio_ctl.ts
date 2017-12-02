import RadioItem from './item'

class RadioButtonControl {
  private selectedIdx_: number = -1;
  constructor(private valueList_: RadioItem[]) {
  }

  public getSelected(): number {
    if (this.selectedIdx_ === -1) {
      return null;
    }
    return this.valueList_[this.selectedIdx_].getId();  
  }

  public clearSelection(elem: HTMLElement): void {
    this.selectedIdx_ = -1;
    elem.dispatchEvent(Event.call('click', 1));
  }

  public select(item: RadioItem): number {
    /*
    this.selectedIdx_ = this.valueList_.findIndex(
        e => e.getId() === item.getId());
    */
    return this.selectedIdx_;
  }
}

export default RadioButtonControl;
