//
//  3DTouchClass.h
//  test3DTouch
//
//  Created by FQL on 16/10/6.
//  Copyright © 2016年 EddieFan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DTouchClass : NSObject


+(NSArray *)create3DTouchItems;

+(void)handle3DtouchActions:(UIApplicationShortcutItem *)shortItem;

@end

