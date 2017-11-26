class Item {
    constructor(private name: string, private price: number) {}
    public say($elem: HTMLElement): void {
        $elem.innerHTML = '書名:' + this.name + ' 価格:' + this.price + '円';
    }
}
export default Item;

