//
//  ViewTwo.swift
//  Zombie Teams Re-up
//
//  Created by Brian Atchley on 2/12/16.
//  Copyright © 2016 CaptainPeanutGames. All rights reserved.
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
        let unsignedArrayCount = UInt32(positionsArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        return positionsArray[randomNumber]
        
        
    }
    
}





struct Names {
    var namesArray: [String] = [
        
        
    ]
    
    
    
    func randomName() -> String {
        let unsignedArrayCount = UInt32(namesArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        return namesArray[randomNumber]
    }
}







        