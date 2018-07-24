let list: number[] = [1, 2, 3];
console.log(list);

list.push(4);
console.log(list);

console.log(list.pop());
console.log(list);

list.forEach(num => {
  console.log(num + " + 1 = " + (num + 1));
});

list.filter(num => num > 1)
  .forEach(num => console.log(num));


let array: Array<number> = [1, 2, 3];
array.push(4);
console.log(array);
