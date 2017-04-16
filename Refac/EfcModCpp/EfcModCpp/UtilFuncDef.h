//
//  UtilFuncDef.h
//  EfcModCpp
//
//  Created by 小川裕亮 on 2017/04/06.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#ifndef UtilFuncDef_h
#define UtilFuncDef_h

namespace my {

    // intを期待する関数だが、
    // 暗黙の型変換によって、doubleやbool, charなども入力できてしまう。
    // 曖昧さを排除するため、 型変換されうる型のオーバーロードをdelete宣言して無効化できる
    bool isLucky(int number) {
        return (number == 7);
    }
    bool isLucky(double number) = delete;
    bool isLucky(bool number) = delete;
    bool isLucky(char number) = delete;
}

#endif /* UtilFuncDef_h */
