var point = {
    x: 0,
    y: 0,
    getX: function() {
        return this.x;
    },
    getY: function() {
        return this.y;
    },
};

print(point.getX());
print(point.y);

var point3D = Object.create(point);

point3D.z = 0;
point3D.getXPlusOther = function(other) {
    return this.x + other;
};
print(point3D.x);
print(point3D.y);
print(point3D.z);
print(point3D.getXPlusOther(100));