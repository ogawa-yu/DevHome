
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

var rotate = function(theta, coord) {
    var result = clone(coord);
    result.x = coord.x * Math.cos(theta) - coord.y * Math.sin(theta);
    result.y = coord.x * Math.sin(theta) + coord.y * Math.cos(theta);
    return result;
}

var transByConfig = function(condig, coord) {
    return trans(config.offsetX, config.offsetY, coord);
}

var rotateByConfig = function(config, coord) {
    var preTrans    = trans(-config.rotAt.x, -config.rotAt.y, coord);
    var rotated     = rotate(config.theta, preTrans);
    var postTrans   = trans(config.rotAt.x, config.rotAt.y, rotated);
    return postTrans;
}

var convertByConfig = function(config, coord) {
    return transByConfig(config, rotateByConfig(config, coord));
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

var convertedRect = 
    unit_rect.map(function(coord) {
        return convertByConfig(config, coord);
});

convertedRect.map(function(coord) {
    console.log('(' + coord.x.toFixed(6) + ',' + coord.y.toFixed(6) + ')');
});

