// H2O+Extension+UIView+Transform
// Categories and extensions of UIView relative to transformation
// Licensed under the Apache License, Version 2.0
// Author by Tang Tianyong

@interface UIView (H2O_Extension_UIView_Transform)

// [[[ CGOffset
#pragma mark CGOffset
struct CGOffset {
    CGFloat offsetX;
    CGFloat offsetY;
};
typedef struct CGOffset CGOffset;

CG_INLINE CGOffset
CGOffsetMake(CGFloat offsetX, CGFloat offsetY);
// ]]]

// [[[ Center
#pragma mark Center
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;

// Offset center
@property (nonatomic, assign) CGFloat offsetCenterX;
@property (nonatomic, assign) CGFloat offsetCenterY;
@property (nonatomic, assign) CGOffset offsetCenter;

// Chain methods
- (UIView *)centerX:(CGFloat)centerX;
- (UIView *)centerY:(CGFloat)centerY;
- (UIView *)center:(CGPoint)center;
- (UIView *)offsetCenterX:(CGFloat)offsetCenterX;
- (UIView *)offsetCenterY:(CGFloat)offsetCenterY;
- (UIView *)offsetCenter:(CGOffset)offsetCenter;
// ]]]

// [[[ Size
#pragma mark Size
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;

// Offset Size
@property (nonatomic, assign) CGFloat offsetWidth;
@property (nonatomic, assign) CGFloat offsetHeight;
@property (nonatomic, assign) CGSize offsetSize;

// Chain methods
- (UIView *)width:(CGFloat)width;
- (UIView *)height:(CGFloat)height;
- (UIView *)size:(CGSize)size;
- (UIView *)offsetWidth:(CGFloat)offsetWidth;
- (UIView *)offsetHeight:(CGFloat)offsetHeight;
- (UIView *)offsetSize:(CGSize)offsetSize;
// ]]]

// [[[ Origin
#pragma mark Origin
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
// Alias of x and y
@property (nonatomic, assign, getter = x, setter = setX:) CGFloat left;
@property (nonatomic, assign, getter = y, setter = setY:) CGFloat top;
@property (nonatomic, assign, getter = x, setter = setX:) CGFloat originX;
@property (nonatomic, assign, getter = y, setter = setY:) CGFloat originY;
@property (nonatomic, assign) CGPoint origin;

// Offset origin
@property (nonatomic, assign) CGFloat offsetX;
@property (nonatomic, assign) CGFloat offsetY;
// Alias of offsetX and offsetY
@property (nonatomic, assign) CGFloat offsetLeft;
@property (nonatomic, assign) CGFloat offsetTop;
@property (nonatomic, assign) CGOffset offsetOrigin;

// Chain methods
- (UIView *)x:(CGFloat)x;
- (UIView *)y:(CGFloat)y;
- (UIView *)left:(CGFloat)left;
- (UIView *)top:(CGFloat)top;
- (UIView *)originX:(CGFloat)originX;
- (UIView *)originY:(CGFloat)originY;
- (UIView *)origin:(CGPoint)origin;
- (UIView *)offsetX:(CGFloat)offsetX;
- (UIView *)offsetY:(CGFloat)offsetY;
- (UIView *)offsetLeft:(CGFloat)offsetLeft;
- (UIView *)offsetTop:(CGFloat)offsetTop;
- (UIView *)offsetOrigin:(CGOffset)offsetOrigin;
// ]]]

// [[[ Zoom
#pragma mark Zoom
@property (nonatomic, assign) CGFloat zoom;
@property (nonatomic, assign) CGFloat zoomWidth;
@property (nonatomic, assign) CGFloat zoomHeight;

// Chain methods
- (UIView *)zoom:(CGFloat)zoom;
- (UIView *)zoomWidth:(CGFloat)zoomWidth;
- (UIView *)zoomHeight:(CGFloat)zoomHeight;
// ]]]

// [[[ Midpoint
#pragma mark Midpoint
@property (nonatomic, assign, readonly) CGPoint midpoint;
// ]]]

// [[[ Center to superview
#pragma mark Center to superview
- (UIView *)centerToSuper;
// ]]]

// [[[ Right and bottom
@property (nonatomic, assign) CGFloat right;
@property (nonatomic, assign) CGFloat bottom;

// Chain methods
- (UIView *)right:(CGFloat)right;
- (UIView *)bottom:(CGFloat)bottom;
// ]]]

// [[[ To right and bottom
#pragma mark To right and bottom
@property (nonatomic, assign) CGFloat toRight;
@property (nonatomic, assign) CGFloat toBottom;

// Chain methods
- (UIView *)toRight:(CGFloat)toRight;
- (UIView *)toBottom:(CGFloat)toBottom;
// ]]]

@end
