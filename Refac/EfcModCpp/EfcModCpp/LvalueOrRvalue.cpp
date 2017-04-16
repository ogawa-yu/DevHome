//
//  LvalueOrRvalue.cpp
//  EfcModCpp
//
//  Created by 小川裕亮 on 2017/04/02.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#include "LvalueOrRvalue.hpp"

using my::Widget;

Widget::Widget(int id) : id_(id) {
}

Widget::~Widget() {
}

Widget::Widget(Widget&& rhs) {
    // rhsが指す値は右辺値だが、rhsそのものは左辺値である。
    // このrhsのような扱いの型を"右辺値参照型"と呼ぶ
}

bool Widget::operator<(const Widget& rhs) const {
    return id_ < rhs.id_;
}

void somefunc(my::Widget wid) {
    
}
