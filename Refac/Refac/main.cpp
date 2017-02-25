//
//  main.cpp
//  Refac
//
//  Created by 小川裕亮 on 2017/02/19.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#include <math.h>
#include <stdio.h>
#include <algorithm>
#include <utility>
#include <functional>

typedef struct {
    double _x;
    double _y;
} coord_t;

typedef struct {
    coord_t _rotationAt;
    double _theta;
    double _offsetX;
    double _offsetY;
} move_config;

/* 座標変換関数*/
typedef coord_t (*converter)(coord_t);

coord_t trans(double dx, double dy, coord_t from) {
    coord_t result = from;
    result._x += dx;
    result._y += dy;
    return result;
}

coord_t rotate(double theta, coord_t from) {
    coord_t result;
    result._x = cos(theta)*from._x - sin(theta)*from._y;
    result._y = sin(theta)*from._x + cos(theta)*from._y;
    return result;
}

coord_t trans_by(move_config config, coord_t from) {
    return trans(config._offsetX, config._offsetY, from);
}

coord_t rotate_by(move_config config, coord_t from) {
    return rotate(config._theta, from);
}

coord_t convertBy(move_config config, coord_t from)
{
    return trans_by(config, rotate_by(config, from));
}


void map_to_coords(converter conv,size_t n, coord_t* to, coord_t* from) {
    for (size_t i = 0; i < n; ++i) {
        to[i] = conv(from[i]);
    }
}

int main(int argc, const char * argv[]) {
    
    move_config conf;
    conf._rotationAt._x = 1.0;
    conf._rotationAt._y = 2.0;
    conf._theta = 30.0;
    conf._offsetX = 5.0;
    conf._offsetY = 5.0;
    
    //coord_t points[10];
    //coord_t result[10];
    // map_to_coords(/*ここで、変換関数を自由に作り出したいんだけど。。。*/, 10, result, points);
    return 0;
}
