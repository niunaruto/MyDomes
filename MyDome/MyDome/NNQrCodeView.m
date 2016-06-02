//
//  ALYQrCodeView.m
//  anlaiye
//
//  Created by Zjcneil on 16/3/18.
//  Copyright © 2016年 Anlaiye. All rights reserved.
//

#import "NNQrCodeView.h"

@interface NNQrCodeView()

@end

@implementation NNQrCodeView

- (instancetype) initWithURLStr:(NSString *)urlStr contenSize:(CGSize)size {
    if (self = [super init]) {
        CIFilter *filter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
        NSData *inputData = [urlStr dataUsingEncoding:NSISOLatin1StringEncoding allowLossyConversion:false];
        [filter setValue:inputData forKey:@"inputMessage"];
        [filter setValue:@"Q" forKey:@"inputCorrectionLevel"];
        CIImage *qrcodeImage = filter.outputImage;
        
        CGFloat scalex = size.width / qrcodeImage.extent.size.width;
        CGFloat scaley = size.height / qrcodeImage.extent.size.height;
        
        CGAffineTransform transform = CGAffineTransformMakeScale(scalex, scaley);
        
        CIImage *output = [qrcodeImage imageByApplyingTransform: transform];
        
        self.image = [UIImage imageWithCIImage:output];
    }return self;
}

@end
