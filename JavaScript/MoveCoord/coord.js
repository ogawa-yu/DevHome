
function clone(obj) {
    var f = function(){};
    f.prototype = obj
    return new f;
}

var trans = function(dx,dy,coord) {
    var result = clone(coord);
    result.x += dx;
    result.y += dy;
    return result;
}

var transByConfig = function(condig, coord) {
    return trans(config.offsetX, config.offsetY, coord);
}

var convertByConfig = function(config, coord) {
    return transByConfig(config, coord);
}

var config = {
    'rotAt' : {
        'x' : 0.5,
        'y' : 0.5,
        },
    'theta' : Math.PI / 4,
    'offsetX' : 1.0,
    'offsetY' : 1.0
};

var unit_rect = [
    { 'x' : 0, 'y' : 0 },
    { 'x' : 0, 'y' : 1 },
    { 'x' : 1, 'y' : 1 },
    { 'x' : 1, 'y' : 0 }
];

var convertedRect = 
    unit_rect.map(function(coord) {
        return convertByConfig(config, coord);
});

convertedRect.map(function(coord) {
    console.log('(' + coord.x.toFixed(6) + ',' + coord.y.toFixed(6) + ')');
});

