//
//  ALYQrCodeView.h
//  anlaiye
//
//  Created by Zjcneil on 16/3/18.
//  Copyright © 2016年 Anlaiye. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NNQrCodeView : UIImageView

- (instancetype) initWithURLStr:(NSString *)urlStr contenSize:(CGSize) size;

@end
