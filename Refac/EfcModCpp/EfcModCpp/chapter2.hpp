//
//  chapter2.hpp
//  EfcModCpp
//
//  Created by 小川裕亮 on 2017/04/02.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#ifndef chapter2_hpp
#define chapter2_hpp

#include "ChapterHook.hpp"

namespace my {
    
    class Chapter2 : public my::IChapterHook {
    public:
        Chapter2();
        
        ~Chapter2();
        
        void execute(int argc, const char* argv[]);
        
        std::string getTitle() const;
    };
}
#endif /* chapter2_hpp */
