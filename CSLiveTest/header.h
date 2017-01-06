//
//  header.h
//  
//
//  Created by Avalon on 2016/12/6.
//  Copyright © 2016年 WipeZ. All rights reserved.
//

#ifndef header_h
#define header_h

#define RGB(x, y, z) [UIColor colorWithRed:x/255.0 green:y/255.0 blue:z/255.0 alpha:1.0]
#define BACKGROUND_COLOR RGB(243, 244, 245)

#define SCREEN_WIDTH                [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT               [UIScreen mainScreen].bounds.size.height

#define px  SCREEN_WIDTH/1242.0f

#define BigSize [UIFont systemFontOfSize:55*px]

//#import <UIKit/UIKit.h>
//#import <Foundation/Foundation.h>
#endif /* header_h */
