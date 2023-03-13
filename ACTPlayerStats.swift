//
//  ACTPlayerStats.swift
//  LittleMan
//
//  Created by Valerie on 13.03.23.
//

import Foundation
import SpriteKit

let kSoundState = "kSoundState"

class ACTPlayerStats {
    private init() {}
    static let shared = ACTManager()
    
    func setSounds(_ state: Bool){
        UserDefaults.standard.set(state, forKey: kSoundState)
        UserDefaults.standard.synchronize()
    }
    
    func getSound() -> Bool {
        return UserDefaults.standard.bool(forKey: kSoundState)
    }
    
    
    
}
