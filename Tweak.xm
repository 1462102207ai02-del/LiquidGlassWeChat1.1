#import <UIKit/UIKit.h>

%hook UITabBar

- (void)layoutSubviews {
    %orig;

    self.backgroundImage = [UIImage new];
    self.shadowImage = [UIImage new];
    self.translucent = YES;

    self.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0.2];

    if (@available(iOS 13.0, *)) {
        self.overrideUserInterfaceStyle = UIUserInterfaceStyleUnspecified;
    }
}

%end
