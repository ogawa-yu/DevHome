let tuple: [string, number];
console.log(tuple);

tuple = ["hello", 10];
// tuple = [1, "hey"]; NG
console.log(tuple);

tuple = ["say", 2];
console.log(tuple);

tuple[2] = 3;
tuple[3] = "4th element";
console.log(tuple);