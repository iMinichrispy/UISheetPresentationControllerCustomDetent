//
//  UISheetPresentationControllerDetent+CustomDetent.h
//  UISheetPresentationControllerCustomDetent
//
//  Created by Alex Perez on 7/31/21.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXPORT UISheetPresentationControllerDetentIdentifier UISheetPresentationControllerDetentIdentifierCustom(CGFloat height);

@interface UISheetPresentationControllerDetent (CustomDetent)

/// Creates a custom detent with the specified height
/// @param height The height of the detent
/// @note The total height of the presented sheet is the bottom safe area height + detent height
+ (instancetype)customDetentWithHeight:(CGFloat)height NS_SWIFT_NAME(custom(_:));

/// Creates a custom detent with the specified identifier and height
/// @param identifier The identifier of the detent
/// @param height The height of the detent
/// @note The total height of the presented sheet is the bottom safe area height + detent height
+ (instancetype)customDetentWithIdentifier:(UISheetPresentationControllerDetentIdentifier)identifier height:(CGFloat)height NS_SWIFT_NAME(custom(_:height:));

@end

NS_ASSUME_NONNULL_END
