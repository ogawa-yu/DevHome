//
//  chapter3.cpp
//  EfcModCpp
//
//  Created by 小川裕亮 on 2017/04/03.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#include <mutex>
#include <memory>
#include <map>
#include <utility>
#include <type_traits>
#include <unordered_map>
#include "chapter3.hpp"
#include "UtilFuncDef.h"

namespace {
    void f(int) {
        std::cout << "Int Func." << std::endl;
    }
    
    void f(bool) {
        std::cout << "Bool Func." << std::endl;
    }
    
    void f(void*) {
        std::cout << "Ptr Func." << std::endl;
    }
    
    int* findRecord(int& a) {
        return &a;
    }
    
    template <typename Key, typename Val>
    using GreateredMap = std::map<Key, Val, std::greater<Key>, std::allocator<std::pair<const Key, Val>>>;
    
    // C++11以前、コピーしたくないクラスはコンストラクタや代入演算子を
    // privateに宣言して、外部が呼び出しできないようにしていた。
    class Item11 {
    public:
        Item11() {}
        ~Item11() {}
        
    private:
        Item11(const Item11&);
        Item11& operator=(const Item11);
    };
    
    //
    class Item11ForCpp11 {
    public:
        Item11ForCpp11() {}
        ~Item11ForCpp11() {}
        Item11ForCpp11(const Item11ForCpp11&) =delete;
        Item11ForCpp11& operator=(const Item11ForCpp11&) =delete;
    };
}

using my::Chapter3;

Chapter3::Chapter3() {
    
}

Chapter3::~Chapter3() {
    
}

void Chapter3::execute(int argc, const char* argv[]) {
    /**
     * 項目7 : オブジェクト作成時の()と{}の違い
     */
    
    /**
     * 項目8 : 0やNULLよりもnullptrを使おう
     */
    
    
    /**
     * 0もNULLもポインタ型ではない。コンパイラがポインタしか認めない式で整数が使用されていたら、
     * ポインタ型だと解釈しているだけ。
     * ポインタ型に対して0やNULLを使うことで不都合するのは、
     * 関数オーバーロードで、ポインタ型のオーバーロードと整数型のオーバーロードが存在する場合。
     */
    f(1);
    f(true);
    f(0); // intのオーバーロードが呼び出される。
    //f(NULL); // intのオーバーロードが呼び出されるか、コンパイルできない(GNU C++だとできなかった
    f(nullptr); // ポインタのオーバーロードが呼び出される。
    
    /**
     * nullptrの実際の型はstd::nullptr_t, 内部ではnullptrを再帰定義している
     * nullptrは全てのポインタ型を表現する。
     */
    
    // nullptr型でポインタを比較する場合、
    // auto変数で宣言した時の型の不一致が検出できる。
    // 下記の関数の戻り値はintだが、NULLで比較していた場合、
    // コンパイルはできてしまう。
    //auto resultAsInt = findRecord();
    //if (resultAsInt != nullptr) {
    //    std::cout << "record is not null" << std::endl;
    //}

    int val = 3;
    auto result = findRecord(val);
    if (result != nullptr) {
        std::cout << "record is not null" << std::endl;
    }
    
    /**
     * 項目9 : typedefよりもエイリアス宣言を優先する
     */
    
    // 長すぎる。C++98ならまずtypedef
    //typedef std::unique_ptr<std::unordered_map<std::string, int>> UPtrMapSS;
    // C++11ならエイリアス宣言ができる
    using UMapSS = std::unordered_map<std::string, int>;
    using UPtrMapSS = std::unique_ptr<std::unordered_map<std::string, int>>;
    UPtrMapSS map(new UMapSS());
    map->insert(std::make_pair("test", 1));

    // どちらも効果は同じ。。。ならなぜエイリアスというものを作った？
    // (1) 関数ポインタを宣言する場合、エイリアスの方がわかりやすい
    typedef void (*FPTDF)(int, const std::string&);  // 名前が定義の間に挟まる
    using FPALS = void (*)(int, const std::string&); // 先頭に名前が来るので、迷いにくい
    
    // (2) エイリアスでないと扱えないテンプレートの形式がある。(エイリアステンプレート)
    // 下記のMapはless比較ではなくstd::greaterで比較するためのmap.
    // エイリアステンプレートにより、汎用型として定義できている。
    GreateredMap<int, int> m;
    m.insert(std::make_pair(1, 2));
    
    // 型特性のtyoedef版とエイリアステンプレート版を比較
    // std::is_same<int, int>::type; for C++11(typedef ver)
    // std::is_same_t<int, int>;     for C++14(alias template ver)
    // エイリアステンプレートでは、上記のような::type のようにネストした型の定義を削減できる。
    // その結果、template meta programing にてよく現れる、下記のようなtypename宣言をしなくてもよくなる
    // template <class TContainer>
    // void f(Containet c) {
    //
    // // ...
    //     typename std::is_same<TContainer, Container>::type; // typeが型であることをtypenaneキーワードで明示しないとコンパイルエラーになる
    // }
    
    /**
     * 項目10 : enumにはスコープを設ける
     *
     */
    
    // C++11以前のenum
    enum OldColor {
        RED = 0,
        BRUE,
        GREEN,
    };
    
    auto oc = RED; // REDはOldColorと同じスコープになる。
    if (oc < 1.0) {
        std::cout << "RED less than 1.0 !" << std::endl;
        oc = BRUE;
    }
    if (oc == 1.0) {
        std::cout << "BRUE equal 1.0 !" << std::endl;
    }
    // このようなenumを unscoped enumという
    // unscoped enumは型付けが弱いので、数値型への暗黙の型変換が行われる。
    
    // scoped enum(Enumクラス)の定義
    enum class Color {
        NEW_RED = 0,
        NEW_BRUE,
        NEW_GREEN,
    };
    auto red = Color::NEW_RED;
    Color green = Color::NEW_GREEN;
    unused(green);
    // (1) 列挙子の有効なスコープがenum名の内部になる
    //auto brue = NEW_BRUE; // このスコープにはColorの列挙値は存在しない。コンパイルエラー
    // (2) 暗黙の型変換が無効になる
    //if (red < 1.0)            Scoped Enumはdouble型と比較することができない。コンパイルエラー
    if (static_cast<double>(red) < 1.0) {
        // OK. 明示的なcastは可能
        std::cout << "NEW_RED less than 1.0 !" << std::endl;
    }
    
    // (3) 前方宣言が可能
    // ここには書かないが、scoped enumは前方宣言が可能である。
    // これにより、enumに定義を追加したとしても、
    // 追加した定義を使用しないアプリケーションのリコンパイルは不要になる。
    
    // (4) 基礎になる整数型のオーバーライドが可能
    // unscoped enumでは、enum値の最大値に応じて、
    // 基礎となる整数型が変化する。(小さければchar, 大きければsize_tなど)
    // scoped enumでは、開発者が必要に応じてオーバーライドできるようになった。
    // デフォルトではintが基礎型になっている。
    enum class Sample : std::uint8_t {
        TYPE_A = 0,
        TYPE_B,
        TYPE_C,
    };
    std::cout << "Color Size:" << sizeof(Color) << std::endl;   // Size : 4 byte(=int)
    std::cout << "Sample Size:" << sizeof(Sample) << std::endl; // Size : 1 byte(=uint_8)
    auto a = Sample::TYPE_A;
    // 基礎の型を指定しても、基礎型にcastしないと比較・代入などはできない
    if (static_cast<size_t>(a) == size_t(0)) { }
    
    // 疑問 unscoped enumの方が便利なときは？
    // std::tupleのタグ扱いをしたい時は、スコープ無しの方が便利。
    
    using UserInformation = std::tuple<std::string, // name
                                       std::string, // email
                                       std::size_t>; // point
    UserInformation info;
    auto name = std::get<0>(info); // oってなんだっけ？ってなる。
    // enum classでタプルのカラムを定義する
    enum class UInfoColumnDef { Name = 0, Email, Point };
    auto nameFromEnumClass = std::get<static_cast<int>(UInfoColumnDef::Name)>(info); // 型が強力なのでcastしないといけない。。
    
    // unscoped enumで定義する
    enum UInfo { Name, Email, Point };
    auto nameFromEnum = std::get<Name>(info); // OK. 簡単！
    
    /**
     * 項目11 : 未定義provate関数よりも=deleteを優先する
     *
     */
    //Item11 item; // コピーコンストラクタをprivateにしたクラス
    // Item11 copyItem(item); // エラー、コピー不能
    //Item11ForCpp11 newItem; // publicで=deleteしたクラス
    //Item11ForCpp11 copyNewItem(newItem); // エラー、コピー不能
    //Item11ForCpp11 copy2;
    //copy2 = newItem; // エラー・代入不能
    
    // =deleteはC++98でのprivate宣言と同じか？
    // 違う。private宣言の場合、クラス内でコピーしようと思えば可能だし、
    // friend宣言したクラスならprivateメンバにアクセスできる。
    // しかし、実装は未定義なので、コンパイルは通るがリンク時にエラーがわかる。
    // 　一方関数deleteの場合、エラーはコンパイル時に検出可能である。
    // また、privateにすることが有効なのはメンバ関数のみであるのに対し、delete宣言は
    // どんな関数に対しても有効である。
    if (isLucky(7)) {
        std::cout << "I'm lucky!" << std::endl;
    }
    //if (isLucky(7.0)) {
    //    std::cout << "opps. can not compile" << std::endl;
    //}
}

std::string Chapter3::getTitle() const {
    return "現代のC++への移行";
}
