//
//  main.cpp
//  EfcModCpp
//
//  Created by 小川裕亮 on 2017/04/02.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#include <memory>
#include <utility>
#include <vector>
#include <iostream>
#include <functional>
#include "chapter1.hpp"
#include "chapter2.hpp"
#include "chapter3.hpp"

int main(int argc, const char * argv[]) {
    typedef std::vector<std::unique_ptr<my::IChapterHook>> ChapterHooks;
    
    ChapterHooks hooks;
    hooks.push_back(std::unique_ptr<my::IChapterHook>(new my::Chapter1));
    hooks.push_back(std::unique_ptr<my::IChapterHook>(new my::Chapter2));
    hooks.push_back(std::unique_ptr<my::IChapterHook>(new my::Chapter3));
    
    int i = 1;
    for (auto& hook : hooks) {
        std::cout << "==== Show Chapter " << i << ":" << hook->getTitle() << " ====" << std::endl;

        hook->execute(argc, argv);
        
        std::cout << "==== Chapter END ====" << std::endl;
        ++i;
    }
    
    return 0;
}
