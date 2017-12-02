class RadioItem {
  constructor(private id_: number, private text_: string) {
  }

  public getId(): number {
    return this.id_;
  }

  public getText(): string {
    return this.text_;
  }
}

export default RadioItem;
