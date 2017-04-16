//
//  chapter1.cpp
//  :
//
//  Created by 小川裕亮 on 2017/04/02.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#include <vector>
#include <iostream>
#include <functional>
#include "LvalueOrRvalue.hpp"
#include "chapter1.hpp"

namespace {
    
    // (new) for C++11 Tailling Return Type(戻り値の後置)
    // Containerによって、戻り値の型をあらかじめ決定できない場合には、
    // auto戻り値にして、 decltypeで型を宣言することで、
    // コンパイル時に型検査を実行させることが可能になった。
    // ただし、この動作には問題がある。
    // autoはテンプレートの型推論規則と同様に動作するため、
    // 仮にint&型を戻り値c[i]が与えたとしても、参照性は外されてint型になる.
    // って、Effective Modean C++ に書いてあるけど、
    // 下記関数を実行して、その戻り値に対して値を代入したら、通常のvectorの
    // operator[]と同じく、値を上書きできた。
    // もしgnu C++11の全バージョンでこの動作をサポートするなら、
    // decltype(auto)じゃなくても良さそう。
    template <class Container, typename Index>
    auto authAndAccess(Container& c, Index i) -> decltype(c[i]) {
        return c[i];
    }
    
    // (new) for  C++14 dectype(auto)
    // 戻り値の後置と同様な処理が実現可能
    //template <class Container, typename Index>
    //decltype(auto) authAndAccessRef(Container& c, Index i) {
    //    return c[i];
    //}
}


using my::Chapter1;

Chapter1::Chapter1() {
    
}

Chapter1::~Chapter1() {
    
}

void Chapter1::execute(int argc, const char* argv[]) {
    /**
     * 1章　型推論
     * 項目1 : template型推論
     * 項目2 : auto変数
     * 項目3 : decltype
     * 項目4 : 推論された型の確認方法
     */
    auto x = 1; //intと推論
    const auto cx = x;
    const auto& rx = x;
    auto&& fref1 = x; // xはintかつlvalueなので、auto&&=int&
    auto&& fref2 = cx; // cxはconst intかつlvalueなので、auto&&=const int&
    auto&& fref3 = 55; // 55はintかつrvalueなので、auto&&=int&&
    my::f(x);
    my::f(cx);
    my::f(rx);
    my::f(35); //右辺値もOK
    
    my::g(x);
    my::g(cx);
    my::g(rx);
    my::g(35); //右辺値もOK
    my::g(fref1);
    my::g(fref2);
    my::g(fref3);
    
    // my::gg(x);  //NG. lvalue
    // my::gg(cx); //NG. lvalue
    // my::gg(rx); //NG. lvalue
    my::gg(45); //OK. rvalue
    my::gg(std::move(rx)); // OK. rvalue
    
    std::vector<int> c = {1, 3, 4, 5};
    std::vector<bool> bc = {true, false, true, true};
    my::g(authAndAccess(c, 1));
    authAndAccess(c, 1) = 4;
    my::g(authAndAccess(c, 1));
    //authAndAccessRef(c, 1) = 5;
    my::g(authAndAccess(c, 1));
    my::g(authAndAccess(bc, 1));
    
    /**
     * 推論された型の確認手段は以下のとおり
     *
     * (1) IDEの出力から確認
     * auto型で宣言した変数にフォーカスすれば、今日のIDEは即時コンパイルによって型を表示してくれる。
     * これを可能にするためには、少なくともプロジェクトはコンパイルが通る状態にある必要がある。
     *
     * (2) コンパイル時に確認
     * コンパイルエラーの情報を使って、autoによる推論型の情報を確認することができる。
     *
     * (3) 実行時に確認
     * つtypeid(decltype(x))
     */
}

std::string Chapter1::getTitle() const {
    return "型推論";
}
