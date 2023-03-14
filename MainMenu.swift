//
//  MainMenu.swift
//  LittleMan
//
//  Created by Valerie on 13.03.23.
//

import SpriteKit


class MainMenu: SKScene {
    var background: SKSpriteNode = {
        var sprite = SKSpriteNode (imageNamed: "background")
        sprite.setScale(1.8)
        sprite.zPosition = 0
        return sprite}()
    
    lazy var playButton: BDButton = {
        var button = BDButton (imageNamed:"ButtonPlay", buttonAction: {
            
            Manager.shared.transition (self, toScene: .GamePlay, transition: SKTransition.moveIn(with: .right, duration: 0.5))
        })
        let chance = CGFloat.random(in: 1...10)
            if chance <= 5 {}
            else {GamePlay()}
            
            button.scaleTo(screenWithPercentage: 0.33)
            button.zPosition = 1
            return button
        
    }()
                           
    override func didMove(to view: SKView) {
        print("123")
        anchorPoint = CGPoint(x: 0.5, y:0.5)
        playButton.position = CGPoint.zero
        addChild(playButton)
        playButton.logAvailableFonts()
    }
                           

}
