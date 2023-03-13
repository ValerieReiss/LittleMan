//
//  ACTManager.swift
//  LittleMan
//
//  Created by Valerie on 13.03.23.
//

import Foundation
import SpriteKit

enum SceneType{
    case MainMenu, Gameplay
}

private init(){}
static let share ACTManager()

public func launch(){
    firstLaunch()
}

private func firstLaunch(){
    
    if !UserDefaults.standard.bool(forKey: "isFirstLaunch"){
        print ("This is first launch")
        ACTPlayerStats.shared.setSounds(true)
        
        
        UserDefaults.standard.set(true, forKey: "isFirstLaunch")
        UserDefaults.standard.synchronize()
    }
}

func transition(_ fromScene: SKScene, toScene: SceneType, transition: SKTransition? = nil){
    guard let scene = getScene(toScene)else {return}
    
    if let transition = transition {
        scene.scaleMode = .resizeFill
        fromScene.view?.presentScene(scene)
    }
}


func getScene(_ sceneType: SceneType) -> SKScene? {
    switch sceneType{
    case SceneType.MainMenu:
        return MainMenu(size CGSize(width: ScreenSize.width, height: ScreenSize.height))
    case SceneType.GamePlay:
        return GamePlay(size CGSize(width: ScreenSize.width, height: ScreenSize.height))
    }
}

func run(_ fileName: String, onNode: SKNode){
    if.ACTPlayerStats.shared.getSound(){
        onNode.run(SKAction.playSoundFileNamed(fileName, waitForCompletion: false))
    }
}
