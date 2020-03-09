//
//  RNFyberRewardedVideo.m
//  RNFyberRewardedVideo
//
//  Created by Ben Yee <benyee@gmail.com> on 11/14/16.
//
#import "RNFyberRewardedVideo.h"

@implementation RNFyberRewardedVideo {
    RCTResponseSenderBlock _requestVideoCallback;
}

@synthesize bridge = _bridge;

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE();

#pragma mark exported methods

RCT_EXPORT_METHOD(requestRewardedVideo:(RCTResponseSenderBlock)callback)
{
    NSLog(@"requestRewardedVideo!");
}

RCT_EXPORT_METHOD(showRewardedVideo)
{
    NSLog(@"showRewardedVideo!");
}

- (NSArray<NSString *> *)supportedEvents {
    return @[];
}

@end

