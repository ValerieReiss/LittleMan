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
        sprite.scaleTo (screenHeightPercentage: 1.8)
        sprite.zPosition = 0
        return sprite}()
lazy var playButton: BDButton = {
    var button = BDButton (imageNamed:"ButtonPlay", buttonAction: {
        
        let chance = CGFloat.random(1, max: 10)
        if chance <= 5 {}
        else {self.startGameplay ()}
        
        button.scaleTo(screenWithPercentage: 0.33)
        button.zPosition = 1
        return button
        
    }()
}
}
