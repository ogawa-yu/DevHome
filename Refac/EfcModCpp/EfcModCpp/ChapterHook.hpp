//
//  ChapterHook.hpp
//  EfcModCpp
//
//  Created by 小川裕亮 on 2017/04/02.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#ifndef ChapterHook_hpp
#define ChapterHook_hpp

#include <iostream>
#include <string>

namespace my {
    /**
     * 各章ごとのサンプルコードを記述するI/F
     * exeuteにはmain関数の引数を取れるようにしてある。
     */
    class IChapterHook {
    public:
        virtual ~IChapterHook() {}
        
        /**
         * 章の内容のサンプルコードを実行する
         */
        virtual void execute(int argc, const char * argv[]) =0;
        
        virtual std::string getTitle() const=0;
    protected:
        /**
         * 結構サンプル書いてて、宣言するけど使わない変数とかがある。
         * 使わない場合コンパイラに警告されて鬱陶しいので、
         * 未使用変数は以下の関数で囲んで評価したことにする。
         */
        template <typename T>
        void unused(const T&) {}

    };
}
#endif /* ChapterHook_hpp */
