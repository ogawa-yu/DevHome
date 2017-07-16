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

function Point3D(x, y, z) {
    this.x = x;
    this.y = y;
    this.z = z;
}

// 継承っぽいこと
Point3D.prototype = new Point();
// オーバーライドっぽいこと
Point3D.prototype.getNorm = function() {
    return Math.sqrt(this.x * this.x 
        + this.y * this.y
        + this.z * this.z);
}

var p3 = new Point3D(1, 2, 3);
print(p3.x);
print(p3.y);
print(p3.z);
print(p3.getNorm());
