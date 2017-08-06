var point = function(spec) {
    var that = {};

    that.getX = function() {
        return spec.x;
    };

    that.setX = function(x) {
        spec.x = x;
    };

    that.getY = function() {
        return spec.y;
    }

    that.setY = function(y) {
        spec.y = y;
    }    
    return that;
};

var p = point({ x: 3, y: 4});
print(p.getX());
//print(p.y); // これは参照できない
print(p.getY());

p.setX(5);
print(p.getX());

var point3D = function(spec) {
    var that = point(spec); // 関数型プロトタイプの継承
    that.getZ = function() {
        return spec.z;
    };

    that.setZ = function(z) {
        that.z = z;
    };
};

var p3 = point3D({x: 3, y: 4, z: 5});
print(p3.getX());
print(p3.getY());
print(p3.getZ());
