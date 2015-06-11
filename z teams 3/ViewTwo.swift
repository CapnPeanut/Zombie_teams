//
//  ViewTwo.swift
//  z teams 3
//
//  Created by Brian Atchley on 3/4/15.
//  Copyright (c) 2015 Brian Atchley. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation



struct Positions {
    var positionsArray = [
        "Window",
        "Balcony",
        "Stairs",
        "Rover",
        "Out",
        "Out"
        
    ]
    
    func randomPosition() -> String {
        var unsignedArrayCount = UInt32(positionsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return positionsArray[randomNumber]
        
        
    }
    
}





struct Names {
    var namesArray: [String] = [
        
        
    ]
    

    
    func randomName() -> String {
        var unsignedArrayCount = UInt32(namesArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return namesArray[randomNumber]
    }
}
        
        
        
        
        
        
        
        
    

    