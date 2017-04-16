//
//  chapter2.cpp
//  EfcModCpp
//
//  Created by 小川裕亮 on 2017/04/02.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#include <map>
#include <unordered_map>
#include <vector>
#include <utility>
#include <memory>
#include <iterator>
#include <iostream>
#include "LvalueOrRvalue.hpp"
#include "chapter2.hpp"

namespace {

    template <class It>
    void dwimOld(It b, It e) {
        while (b != e) {
            // 長々とした型宣言をしている
            typename std::iterator_traits<It>::value_type currvalue = *b;
            std::cout << currvalue << std::endl;
            ++b;
        }
    }
    
    template <class It>
    void dwim(It b, It e) {
        while (b != e) {
            // 型推論にお任せする
            auto currvalue = *b;
            std::cout << currvalue << std::endl;
            ++b;
        }
    }
}

using my::Chapter2;

Chapter2::Chapter2() {
    
}

Chapter2::~Chapter2() {
    
}

void Chapter2::execute(int argc, const char* argv[]) {
    /**
     * 2章 auto
     * 項目5 : 明示方宣言よりもautoを優先する
     * (疑問)
     * autoってタイプ量減らせて便利だけど、濫用したらわけわかんなくない？
     * 明示的に型書けばいいじゃん。
     * 明示的に書いた時に危険だったコードを、強制的にエラーにできたりしますよ！
     */
    // (1) 変数初期化
    int undef; // OK. しかし値は未設定
    unused(undef);
    //auto undef; // NG. 初期化されていない。(ので推論できない)
    auto def = 0; // OK. 値が設定され、intと推論できた。
    unused(def);
    
    std::vector<int> vec = { 1,2,3,4,5 };
    // (2) STLのネストされた型を簡潔に宣言できる(詳細は関数を参照)
    dwim(std::begin(vec), std::end(vec));

    // (3) 無名ラムダ
    auto cmp = [](const std::unique_ptr<my::Widget>& p1,
                  const std::unique_ptr<my::Widget>& p2) { return *p1 < *p2; };
    std::cout << "exec lambda:" <<
                 cmp(std::unique_ptr<my::Widget>(new Widget(1)),
                     std::unique_ptr<my::Widget>(new Widget(3))) << std::endl;

    // (4) std::functionへのラムダ代入
    std::function<bool(const std::unique_ptr<my::Widget>&,
                       const std::unique_ptr<my::Widget>&)> function =
    [](const std::unique_ptr<my::Widget>& p1,
       const std::unique_ptr<my::Widget>& p2) { return *p1 < *p2; };
    std::cout << "exec function:" <<
    function(std::unique_ptr<my::Widget>(new Widget(1)),
             std::unique_ptr<my::Widget>(new Widget(3))) << std::endl;
    
    /**
     * (3), (4)について補足
     * クロージャ(無名ラムダ)をautoで保持しているとき、
     * 実際の型はstd::functionではない。
     * std::functionの場合、一般に実行の速度はautoで宣言した場合に比べて劣る
     * クロージャが必要とするメモリ領域が、function型があらかじめ確保するメモリ領域
     * よりも少ない場合、functionが追加のメモリ領域を確保する。
     * つまり最悪の場合にはメモリマネージャへの問い合わせ回数が増える。
     * 一般に、std::functionの方がクロージャよりも占有するメモリ領域が多い。
     */

    // (5) 自動推論によるコード可搬性の向上
    size_t size = vec.size(); //　64bitの処理系によっては不正なコード.
    unused(size);
                                    // unsigned intは32bitで定義されている場合、vectorのサイズによってはオーバーフロー
    auto s = vec.size(); // どの処理系でもOK, 自動推論される。
    unused(s);
    std::unordered_map<std::string, int> m;
    m.insert(std::make_pair(std::string("test"), 1));
    // 以下のpairのkeyは間違っている
    // unordered_map::key_typeはconst std::stringが正しい。
    for (const std::pair<std::string, int>& p : m) {
        std::cout << "f:" << p.first << ", s:" << p.second << std::endl;
    }
    // こうすれば間違う可能性はない
    for (const auto& p : m) {
        std::cout << "f:" << p.first << ", s:" << p.second << std::endl;
    }
    
    /**
     * autoだと可読性悪くならない？という疑問について
     * 今日、型推論を行う言語なんてたくさんある。
     * C++11のauto相当の機能を持っている言語もたくさんある。
     * それらの言語による大規模プロジェクトの結果から見ても、
     * 保守性や可読性の阻害要因にはあまりなってないだろう。
     * IDEがその辺りも補完してくれる。
     * オブジェクトの型を抽象的に見たい、ということもある。
     * →どのコンテナなのか、どのスマートポインタなのか、ではなく単に
     *  コンテナである、スマートポインタである、ということがわかれば良いだけ。
     * それらは変数名を十分注意すれば、型の情報は担保できる。
     */
    
    
    /**
     * 項目6 : autoが期待とは異なる型を推論する場面ではETIIを用いる
     *
     * autoが期待と異なる型を推論してしまうケースとは？
     * ユーザーに具体的な型を意識させない、Proxy的な設計になっているクラス
     * 例えばstd::vector<T>のoperator[]は、一般的にT&を返す。
     * しかしstd::vector<bool>は特殊化されており、operator[]はbool&を返さない。
     * このような場合、auto result = boolVector[0];の右辺値はboolではないので、
     * 未定義の動作となる。
     *
     * ETII (Explicitly Typed Initializer Idiom) 明示的型付け初期化イディオム
     * auto result = static_cast<bool>(boolVector[0]);
     * 上記のように書くことで、目的の型に推論するヒントをコンパイラに与えることができる。
     * しかもコンパイル時に解決されるので、上記のstatic_castは実行時に0コストになる。
     */
    
}

std::string Chapter2::getTitle() const {
    return "auto";
}
