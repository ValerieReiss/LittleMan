//
//  Gameplay.swift
//  LittleMan
//
//  Created by Valerie on 13.03.23.
//

import SpriteKit

class Gameplay: SKScene {
    override func didMove(to view: SKView){
        backgroundColor = .cyan
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        for touch in touches {
            if.touch == touch.first {
                Manager.shared.transition (self, toScene: .MainMenu, transition:
                SKTransition.moveIn(with: right, duration: 0.5))
            }
        }
    }
    
    
    
    
}

