@interface SBBannerContextView : UIView
@end
%hook SBBannerContainerView
-(void)layoutSubviews
{
%orig;
SBBannerContextView *view = MSHookIvar<SBBannerContextView *>(self, "_bannerView");
CGFloat BannerWidth = [UIScreen mainScreen].bounds.size.width;
CGFloat height = view.frame.size.height;
[self setFrame:(CGRect){{0,[UIScreen mainScreen].bounds.size.width-height},{BannerWidth, height}}];
}
%end
