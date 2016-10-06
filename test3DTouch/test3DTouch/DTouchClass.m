//
//  3DTouchClass.m
//  test3DTouch
//
//  Created by FQL on 16/10/6.
//  Copyright © 2016年 EddieFan. All rights reserved.
//

#import "DTouchClass.h"

typedef NS_ENUM(NSInteger, TouchType) {
    TouchTypeHome = 0,
    TouchTypeSearch,
    TouchTypeShopCar,
    TouchTypeShare
};

@implementation DTouchClass

+(NSArray *)create3DTouchItems
{
    //创建快捷选项
    UIApplicationShortcutIcon * searchIcon  =  [UIApplicationShortcutIcon iconWithTemplateImageName:@"ShortcutSearch"];
    UIApplicationShortcutItem * search      = [[UIApplicationShortcutItem alloc]initWithType:@"0" localizedTitle:@"搜索"
                                                                           localizedSubtitle:nil icon:searchIcon userInfo:nil];
    
    UIApplicationShortcutIcon * orderIcon   =  [UIApplicationShortcutIcon iconWithTemplateImageName:@"ShortcutOrder"];
    UIApplicationShortcutItem * order       = [[UIApplicationShortcutItem alloc]initWithType:@"1" localizedTitle:@"查订单"
                                                                           localizedSubtitle:nil icon:orderIcon userInfo:nil];
    
    UIApplicationShortcutIcon * cartIcon    =  [UIApplicationShortcutIcon iconWithTemplateImageName:@"tab_cart"];
    UIApplicationShortcutItem * cart        = [[UIApplicationShortcutItem alloc]initWithType:@"2" localizedTitle:@"购物车"
                                                                           localizedSubtitle:nil icon:cartIcon userInfo:nil];
    
    UIApplicationShortcutIcon * communityIcon =  [UIApplicationShortcutIcon iconWithTemplateImageName:@"bar_circle_N"];
    UIApplicationShortcutItem * community     = [[UIApplicationShortcutItem alloc]initWithType:@"3" localizedTitle:@"五洲圈"
                                                                             localizedSubtitle:nil icon:communityIcon userInfo:nil];
    
    
    return @[cart,order,community,search];

}

+(void)handle3DtouchActions:(id)shortItem
{
    NSInteger type = [shortcutItem.type integerValue];
    switch (type) {
            
        case TouchTypeSearch:{
            
            [TabBarController changeTabBarSelectedVCAtIndex:WZHMoudleHome];
            SearchProductVC *searchVc = [[SearchProductVC alloc] init];
            [[TouchManager getCurrentNavigationController] pushViewController:searchVc animated:YES];
            
            [[WZHTracking singleton] trackEvent:@{kTrackingEventId : @"搜索",
                                                  kTrackingLabel   : @"首页"
                                                  }];
        }
            break;
            
        case TouchTypeHome:{
            
            [TabBarController changeTabBarSelectedVCAtIndex:WZHMoudleAcount];
            if (![DataCenter singleton].isLoginUser) {
                LoginVC *loginVc = [[LoginVC alloc] init];
                [[TouchManager getCurrentNavigationController] pushViewController:loginVc animated:YES];
                return ;
            }
            OrderListVC *vc = [[OrderListVC alloc] init];
            vc.selectedOrderState = (WZHOrderState)WZHOrderStateListAll;
            [[TouchManager getCurrentNavigationController] pushViewController:vc animated:YES];
        }
            break;
            
        case TouchTypeShare:
            
            [TabBarController changeTabBarSelectedVCAtIndex:WZHMoudleCart];
            break;
            
        case TouchTypeShopCar:
            
            [TabBarController changeTabBarSelectedVCAtIndex:WZHMoudleRecommend];
            break;
            
        default:
            break;
    }

    
}

@end
