//
//  LvalueOrRvalue.hpp
//  EfcModCpp
//
//  Created by 小川裕亮 on 2017/04/02.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#ifndef LvalueOrRvalue_hpp
#define LvalueOrRvalue_hpp

namespace my {
    /**
     * 左辺値(lvalue)か右辺値(rvalue)かを判定する。
     * あくまで仮想的なコードなので、実際には動かない
     *
     */
    //template <typename T>
    //class LvalueOrRvalue {
    //public:
    //    // 左辺値かどうかの判定関数(rvalueならfalse)
    //    bool operator()(const T& value) const {
    //        return hasAddress(value); // アドレスが存在するかどうかの判定関数
    //    }
    //};
    
    class Widget {
    public:
        Widget(int id = 0);
        ~Widget();
        // ...
        
        
        // (for C++11) ムーブ演算
        Widget(Widget&& rhs);
        
        bool operator<(const Widget& rhs) const;
    private:
        int id_;
    };
    
    void somefunc(my::Widget wid);
}
#endif /* LvalueOrRvalue_hpp */
