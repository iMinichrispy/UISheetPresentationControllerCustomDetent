//
//  UISheetPresentationControllerDetent+CustomDetent.m
//  UISheetPresentationControllerCustomDetent
//
//  Created by Alex Perez on 7/31/21.
//

#import "UISheetPresentationControllerDetent+CustomDetent.h"

static NSString *const UISheetPresentationControllerDetentIdentifierCustomPrefix = @"UISheetPresentationController.Detent.Custom";

UISheetPresentationControllerDetentIdentifier UISheetPresentationControllerDetentIdentifierCustom(CGFloat height) {
    return [UISheetPresentationControllerDetentIdentifierCustomPrefix stringByAppendingString:[@(height) stringValue]];
}

@interface UISheetPresentationControllerDetent (CustomDetentPrivate)

// Private API, subject to break in future releases
+ (instancetype)_detentWithIdentifier:(UISheetPresentationControllerDetentIdentifier)identifier constant:(CGFloat)constant;

@end

@implementation UISheetPresentationControllerDetent (CustomDetent)

#pragma mark - Initialization

+ (instancetype)customDetentWithHeight:(CGFloat)height {
    UISheetPresentationControllerDetentIdentifier identifier = UISheetPresentationControllerDetentIdentifierCustom(height);
    return [self customDetentWithIdentifier:identifier height:height];
}

+ (instancetype)customDetentWithIdentifier:(UISheetPresentationControllerDetentIdentifier)identifier height:(CGFloat)height {
    if (@available(iOS 16.0, *)) {
        return [UISheetPresentationControllerDetent customDetentWithIdentifier:identifier resolver:^CGFloat(id<UISheetPresentationControllerDetentResolutionContext> _Nonnull context) {
            return height;
        }];
    } else {
        return [UISheetPresentationControllerDetent _detentWithIdentifier:identifier constant:height];
    }
}

@end
