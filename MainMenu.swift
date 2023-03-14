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
        return button}()
    }
                           
    override func didMove(to view: SKView) {
        print("123")
        anchorPoint = CGPoint(x: 0.5, y:0.5)
        addPlayButton()
        
    }
                           
    override func touchesBegan(touches: Set<UITouch> , with: UIEvent?){
        for touch in touches {
            if touch == touches.first {
                //ACTManager.shared.transition(self, toScene: .Gameplay)
                ACTManager.shared.transition (self, toScene: .Gameplay, transition:
                SKTransition.moveIn(with: right, duration: 0.5))
            }
        }
    }
                           
    func addPlayButton(){
        let playButton = SKSpriteNode(imageNamed: "ButtonPlay")
        playButton.position = CGPoint.zero
        addChild(playButton)
    }
                           
}
