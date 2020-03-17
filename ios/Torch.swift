//
//  Torch.swift
//  TorchProject
//
//  Created by Sukhpal Saini on 2020-03-17.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation
import UIKit

@objc(Torch)
class Torch: RCTEventEmitter{
  
  @objc
  func on(){
    toggleTorch(on:true);
  }
  
  @objc
  func off(){
    toggleTorch(on:false);
  }
  
  
  private func toggleTorch(on: Bool) {
    if (on){print ("It's on");
      
      sendEvent(withName: "onChange", body: on)
    }
    else{print("It's off");
    
    sendEvent(withName: "onChange", body:"\(on) thisis off")}
      }
  
  override func supportedEvents() -> [String]! {
    return ["onChange"]
  }
}
