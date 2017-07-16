function Point(x, y) {
    this.x = x;
    this.y = y;
}
Point.prototype.getNorm = function() {
    return Math.sqrt(this.x * this.x + this. y * this.y);
}

var p = new Point(1, 2);
print(p.x);
print(p.y);
print(p.getNorm());