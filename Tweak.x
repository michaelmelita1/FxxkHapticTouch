#import <UIKit/UIKit.h>
%hook _UITouchDurationObservingGestureRecognizer
-(double)minimumDurationRequired {
	return 1000;
}
%end
