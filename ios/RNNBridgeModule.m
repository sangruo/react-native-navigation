#import "RNNBridgeModule.h"

#import "RNN.h"
#import "RNNControllerFactory.h"

@implementation RNNBridgeModule

RCT_EXPORT_MODULE(NativeNavigation);

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(startApp:(NSDictionary*)layout)
{
    UIApplication.sharedApplication.delegate.window.rootViewController = [RNNControllerFactory createRootViewController:layout];
    [UIApplication.sharedApplication.delegate.window makeKeyAndVisible];
}

@end
