//
//  GamePlay.swift
//  LittleMan
//
//  Created by Valerie on 13.03.23.
//

import SpriteKit

class GamePlay: SKScene {
    
    var backButton: BDButton{
        var button = BDButton(imageNamed: "button-yellow", title: "Back", buttonAction: {
            Manager.shared.transition (self, toScene: .MainMenu, transition:
            SKTransition.moveIn(with: .left, duration: 0.5))})
        button.zPosition = 1
        button.scaleTo(screenWithPercentage: 0.25)
        
        return button
    }
    
    override func didMove(to view: SKView){
        backgroundColor = .cyan
        backButton.position = CGPoint(x: Screensize.width * 0.2, y: Screensize.height * 0.85)
        addChild(backButton)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
    }
    
}

