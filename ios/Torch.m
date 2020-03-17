//
//  Torch.m
//  TorchProject
//
//  Created by Sukhpal Saini on 2020-03-17.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(Torch, RCTEventEmitter)
RCT_EXTERN_METHOD(on)
RCT_EXTERN_METHOD(off)
@end
