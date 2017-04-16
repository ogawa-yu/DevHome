//
//  chapter3.hpp
//  EfcModCpp
//
//  Created by 小川裕亮 on 2017/04/03.
//  Copyright © 2017年 Y.Ogawa. All rights reserved.
//

#ifndef chapter3_hpp
#define chapter3_hpp

#include "ChapterHook.hpp"

namespace my {
    
    class Chapter3 : public my::IChapterHook {
    public:
        Chapter3();
        
        ~Chapter3();
        
        void execute(int argc, const char* argv[]);
        
        std::string getTitle() const;
    };
}

#endif /* chapter3_hpp */
