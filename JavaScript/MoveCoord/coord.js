
function clone(obj) {
    var f = function(){};
    f.prototype = obj
    return new f;
}

function compose(f, g) {
    return function(x) {
        return f(g(x));
    }
}

var trans = function(dx,dy) {
    return function(coord) {
        var result = clone(coord);
        result.x += dx;
        result.y += dy;
        return result;
    }
}

var rotate = function(theta) {
    return function(coord) {
        var result = clone(coord);
        result.x = coord.x * Math.cos(theta) - coord.y * Math.sin(theta);
        result.y = coord.x * Math.sin(theta) + coord.y * Math.cos(theta);
        return result;
    }
}

var transByConfig = function(condig) {
    return trans(config.offsetX, config.offsetY);
}

var rotateByConfig = function(config) {
    return  compose(trans(config.rotAt.x, config.rotAt.y),
                compose(rotate(config.theta),
                    trans(-config.rotAt.x, -config.rotAt.y)));
}

var convertByConfig = function(config) {
    return compose(transByConfig(config), rotateByConfig(config));
}

var config = {
    'rotAt' : {
        'x' : 0.5,
        'y' : 0.5,
        },
    'theta' : Math.PI / 4,
    'offsetX' : -0.5,
    'offsetY' : -0.5
};

var unit_rect = [
    { 'x' : 0, 'y' : 0 },
    { 'x' : 0, 'y' : 1 },
    { 'x' : 1, 'y' : 1 },
    { 'x' : 1, 'y' : 0 }
];

var convertedRect = unit_rect.map(convertByConfig(config));

convertedRect.map(function(coord) {
    console.log('(' + coord.x.toFixed(6) + ',' + coord.y.toFixed(6) + ')');
});

