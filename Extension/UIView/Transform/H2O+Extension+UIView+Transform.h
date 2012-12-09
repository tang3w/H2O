// H2O+Extension+UIView+Transform
// Categories and extensions of UIView relative to transformation
// Licensed under the Apache License, Version 2.0
// Author by Tang Tianyong

@interface UIView (H2O_Extension_UIView_Transform)

#pragma mark - [[UIView]].[Origin]
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;

// Alias of x and y
@property (nonatomic, assign, getter = x, setter = setX:) CGFloat left;
@property (nonatomic, assign, getter = y, setter = setY:) CGFloat top;
@property (nonatomic, assign, getter = x, setter = setX:) CGFloat originX;
@property (nonatomic, assign, getter = y, setter = setY:) CGFloat originY;

@property (nonatomic, assign) CGPoint origin;

#pragma mark - [[UIView]].[Size]
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

@property (nonatomic, assign) CGSize size;

#pragma mark - [[UIView]].[Center]
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;

#pragma mark - [[UIView]].[CoordValue]
@property (nonatomic, assign, readonly) CGFloat coordRight;
@property (nonatomic, assign, readonly) CGFloat coordBottom;

#pragma mark - Shortcut methods
- (void)x:(CGFloat)x
        y:(CGFloat)y;
- (void)left:(CGFloat)left 
         top:(CGFloat)top;
- (void)originX:(CGFloat)originX 
        originY:(CGFloat)originY;
- (void)width:(CGFloat)width 
       height:(CGFloat)height;
- (void)centerX:(CGFloat)centerX
        centerY:(CGFloat)centerY;

// Set offset values
- (void)offsetX:(CGFloat)offsetX
        offsetY:(CGFloat)offsetY;
- (void)offsetLeft:(CGFloat)offsetLeft
         offsetTop:(CGFloat)offsetTop;
- (void)offsetOriginX:(CGFloat)offsetOriginX 
        offsetOriginY:(CGFloat)offsetOriginY;
- (void)offsetWidth:(CGFloat)offsetWidth
       offsetHeight:(CGFloat)offsetHeight;
- (void)offsetCenterX:(CGFloat)offsetCenterX
        offsetCenterY:(CGFloat)offsetCenterY;

#pragma mark - [[UIView]].[Zoom]
- (void)setZoom:(CGFloat)factor;
- (void)setZoomWidth:(CGFloat)widthFactor;
- (void)setZoomHeight:(CGFloat)heightFactor;
- (void)zoomWidth:(CGFloat)widthFactor
       zoomHeight:(CGFloat)heightFactor;

@end
