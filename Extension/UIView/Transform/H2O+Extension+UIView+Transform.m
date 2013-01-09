// H2O+Extension+UIView+Transform
// Categories and extensions of UIView relative to transformation
// Licensed under the Apache License, Version 2.0
// Author by Tang Tianyong

#import "H2O+Extension+UIView+Transform.h"

CG_INLINE CGOffset
CGOffsetMake(CGFloat offsetX, CGFloat offsetY) {
    CGOffset offset;
    offset.offsetX = offsetX;
    offset.offsetY = offsetY;
    return offset;
}

@implementation UIView (H2O_Extension_UIView_Transform)

// [[[ Center
#pragma mark Center
- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX {
    CGPoint c = self.center;
    c.x = centerX;
    self.center = c;
}

- (CGFloat)centerY {
    return self.center.y;
}

// Offset center
- (void)setCenterY:(CGFloat)centerY {
    CGPoint c = self.center;
    c.y = centerY;
    self.center = c;
}

- (CGFloat)offsetCenterX {
    return NAN;
}

- (void)setOffsetCenterX:(CGFloat)offsetCenterX {
    self.centerX += offsetCenterX;
}

- (CGFloat)offsetCenterY {
    return NAN;
}

- (void)setOffsetCenterY:(CGFloat)offsetCenterY {
    self.centerY += offsetCenterY;
}

- (CGOffset)offsetCenter {
    return CGOffsetMake(NAN, NAN);
}

- (void)setOffsetCenter:(CGOffset)offsetCenter {
    self.centerX += offsetCenter.offsetX;
    self.centerY += offsetCenter.offsetY;
}

// Chain methods
- (UIView *)centerX:(CGFloat)centerX {
    self.centerX = centerX;
    return self;
}

- (UIView *)centerY:(CGFloat)centerY {
    self.centerY = centerY;
    return self;
}

- (UIView *)center:(CGPoint)center {
    self.center = center;
    return self;
}

- (UIView *)offsetCenterX:(CGFloat)offsetCenterX {
    self.offsetCenterX = offsetCenterX;
    return self;
}

- (UIView *)offsetCenterY:(CGFloat)offsetCenterY {
    self.offsetCenterY = offsetCenterY;
    return self;
}

- (UIView *)offsetCenter:(CGOffset)offsetCenter {
    self.offsetCenter = offsetCenter;
    return self;
}

// [[[ Origin
#pragma mark Origin
- (CGFloat)x {
    return self.frame.origin.x;
}

- (void)setX:(CGFloat)x {
    self.centerX = x + self.width / 2.0f;
}

- (CGFloat)y {
    return self.frame.origin.y;
}

- (void)setY:(CGFloat)y {
    self.centerY = y + self.height / 2.0f;
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin {
    self.x = origin.x;
    self.y = origin.y;
}

// Offset origin
- (CGFloat)offsetX {
    return NAN;
}

- (void)setOffsetX:(CGFloat)offsetX {
    self.x += offsetX;
}

- (CGFloat)offsetY {
    return NAN;
}

- (void)setOffsetY:(CGFloat)offsetY {
    self.y += offsetY;
}

// Alias of offsetX and offsetY
- (CGFloat)offsetLeft {
    return NAN;
}

- (void)setOffsetLeft:(CGFloat)offsetLeft {
    self.offsetX = offsetLeft;
}

- (CGFloat)offsetTop {
    return NAN;
}

- (void)setOffsetTop:(CGFloat)offsetTop {
    self.offsetY = offsetTop;
}

- (CGOffset)offsetOrigin {
    return CGOffsetMake(NAN, NAN);
}

- (void)setOffsetOrigin:(CGOffset)offsetOrigin {
    self.offsetLeft = offsetOrigin.offsetX;
    self.offsetTop = offsetOrigin.offsetY;
}

// Chain methods
- (UIView *)x:(CGFloat)x {
    self.x = x;
    return self;
}

- (UIView *)y:(CGFloat)y {
    self.y = y;
    return self;
}

- (UIView *)left:(CGFloat)left {
    return [self x:left];
}

- (UIView *)top:(CGFloat)top {
    return [self y:top];
}

- (UIView *)originX:(CGFloat)originX {
    return [self x:originX];
}

- (UIView *)originY:(CGFloat)originY {
    return [self y:originY];
}

- (UIView *)origin:(CGPoint)origin {
    self.origin = origin;
    return self;
}

- (UIView *)offsetX:(CGFloat)offsetX {
    self.offsetX = offsetX;
    return self;
}

- (UIView *)offsetY:(CGFloat)offsetY {
    self.offsetY = offsetY;
    return self;
}

- (UIView *)offsetLeft:(CGFloat)offsetLeft {
    self.offsetLeft = offsetLeft;
    return self;
}

- (UIView *)offsetTop:(CGFloat)offsetTop {
    self.offsetTop = offsetTop;
    return self;
}

- (UIView *)offsetOrigin:(CGOffset)offsetOrigin {
    self.offsetOrigin = offsetOrigin;
    return self;
}
// ]]]


// [[[ Size
#pragma mark Size
- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    CGRect r = self.frame;
    r.size.width = width;
    self.frame = r;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    CGRect r = self.frame;
    r.size.height = height;
    self.frame = r;
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setSize:(CGSize)size {
    self.width = size.width;
    self.height = size.height;
}

// Offset Size
- (CGFloat)offsetWidth {
    return NAN;
}

- (void)setOffsetWidth:(CGFloat)offsetWidth {
    self.width += offsetWidth;
}

- (CGFloat)offsetHeight {
    return NAN;
}

- (void)setOffsetHeight:(CGFloat)offsetHeight {
    self.height += offsetHeight;
}

- (CGSize)offsetSize {
    return CGSizeMake(NAN, NAN);
}

- (void)setOffsetSize:(CGSize)offsetSize {
    self.offsetWidth = offsetSize.width;
    self.offsetHeight = offsetSize.height;
}

// Chain methods
- (UIView *)width:(CGFloat)width {
    self.width = width;
    return self;
}

- (UIView *)height:(CGFloat)height {
    self.height = height;
    return self;
}

- (UIView *)size:(CGSize)size {
    self.size = size;
    return self;
}

- (UIView *)offsetWidth:(CGFloat)offsetWidth {
    self.offsetWidth = offsetWidth;
    return self;
}

- (UIView *)offsetHeight:(CGFloat)offsetHeight {
    self.offsetHeight = offsetHeight;
    return self;
}

- (UIView *)offsetSize:(CGSize)offsetSize {
    self.offsetSize = offsetSize;
    return self;
}
// ]]]

// [[[ Zoom
#pragma mark Zoom
- (CGFloat)zoom {
    return NAN;
}

- (void)setZoom:(CGFloat)factor {
    self.width *= factor;
    self.height *= factor;
}

- (CGFloat)zoomWidth {
    return NAN;
}

- (void)setZoomWidth:(CGFloat)widthFactor {
    self.width *= widthFactor;
}

- (CGFloat)zoomHeight {
    return NAN;
}

- (void)setZoomHeight:(CGFloat)heightFactor {
    self.height *= heightFactor;
}

// Chain methods
- (UIView *)zoom:(CGFloat)zoom {
    self.zoom = zoom;
    return self;
}

- (UIView *)zoomWidth:(CGFloat)zoomWidth {
    self.zoomWidth = zoomWidth;
    return self;
}

- (UIView *)zoomHeight:(CGFloat)zoomHeight {
    self.zoomHeight = zoomHeight;
    return self;
}
// ]]]

// [[[ Center of rect
#pragma mark Center of rect
- (CGPoint)centerOfRect {
    return CGPointMake(self.width / 2.0f, self.height / 2.0f);
}
// ]]]

// [[[ Center to superView
#pragma mark Center to superView
- (UIView *)centerToSuper {
    if (self.superview) {
        self.center = self.superview.centerOfRect;
    }
    return self;
}
// ]]]

// [[[ To right and bottom
#pragma mark To right and bottom
- (CGFloat)toRight {
    return self.left + self.width;
}

- (void)setToRight:(CGFloat)toRight {
    self.left = toRight - self.width;
}

- (CGFloat)toBottom {
    return self.top + self.height;
}

- (void)setToBottom:(CGFloat)toBottom {
    self.top = toBottom - self.height;
}

//Chain methods
- (UIView *)toRight:(CGFloat)toRight {
    self.toRight = toRight;
    return self;
}

- (UIView *)toBottom:(CGFloat)toBottom {
    self.toBottom = toBottom;
    return self;
}
// ]]]

@end