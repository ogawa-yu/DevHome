//
//  chapter1.hpp
//  EfcModCpp
//
//  Created by 小川裕亮 on 2017/04/02.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#ifndef chapter1_hpp
#define chapter1_hpp

#include <iostream>
#include "ChapterHook.hpp"

namespace my {
    /**
     * 型推論パターン１
     * T型がポインタまたは参照の場合
     * →呼び出し側の左辺値は全てpointerまたはreferenceと推論される
     */
    template <typename T>
    void f(const T& val) { std::cout << "(f)Value is " << val << std::endl; }
    
    /**
     * 型推論パターン2
     * T型がユニバーサル参照(forwarding reference)の場合
     * Effective Modan C++ 書籍ではユニバーサル参照と呼ぶ
     * →呼び出し側の左辺値は参照のように扱われる。const性の値はコンパイルエラーになる
     */
    static int gVal_ = 0;
    template <typename T>
    void g(T&& val) {
        gVal_ = std::move(val);
        std::cout << "(g)Value is " << gVal_ << std::endl;
    }
    /**
     * 型推論パターン3
     * T型が参照でもポインタでもない
     *　→通常の値渡しとして振る舞う
     */
    template <typename T>
    void h(T val) { std::cout << "(h)Value is " << val << std::endl; }
    /**
     * 型推論パターン4
     * const性のあるforwarding reference
     * →呼び出し側では左辺値はコンパイルエラーになる
     */
    template <typename T>
    void gg(const T&& val) {
        gVal_ = std::move(val);
        std::cout << "(gg)Value is " << gVal_ << std::endl;
    }

    class Chapter1 : public my::IChapterHook {
    public:
        Chapter1();
        
        ~Chapter1();
        
        void execute(int argc, const char* argv[]);
        
        std::string getTitle() const;
    };
    
}

#endif /* chapter1_hpp */
