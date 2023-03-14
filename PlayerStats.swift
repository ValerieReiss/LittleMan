//
//  PlayerStats.swift
//  LittleMan
//
//  Created by Valerie on 13.03.23.
//

import Foundation
import SpriteKit

let kSoundState = "kSoundState"

class PlayerStats {
    private init() {}
    static let shared = PlayerStats()
    
    func setSounds(_ state: Bool){
        UserDefaults.standard.set(state, forKey: kSoundState)
        UserDefaults.standard.synchronize()
    }
    
    func getSound() -> Bool {
        return UserDefaults.standard.bool(forKey: kSoundState)
    }
    
    
    
}
