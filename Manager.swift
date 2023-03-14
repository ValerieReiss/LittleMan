//
//  Manager.swift
//  LittleMan
//
//  Created by Valerie on 13.03.23.
//

import Foundation
import SpriteKit


class Manager {
    
    enum SceneType{
        case MainMenu, GamePlay
    }
    
    private init(){}
    static let shared = Manager()
    
    public func launch(){
        firstLaunch()
    }
    
    private func firstLaunch(){
        
        if !UserDefaults.standard.bool(forKey: "isFirstLaunch"){
            print ("This is first launch")
            PlayerStats.shared.setSounds(true)
            
            print("first launch")
            
            UserDefaults.standard.set(true, forKey: "isFirstLaunch")
            UserDefaults.standard.synchronize()
        }
    }
    
    func transition(_ fromScene: SKScene, toScene: SceneType, transition: SKTransition? = nil){
        guard let scene = getScene(toScene)else {return}
        
        if let transition = transition {
            scene.scaleMode = .resizeFill
            fromScene.view?.presentScene(scene, transition: transition)
        }else{
            scene.scaleMode = .resizeFill
            fromScene.view?.presentScene(scene)
        }
    }
    
    func getScene(_ sceneType: SceneType) -> SKScene? {
        switch sceneType{
        case SceneType.MainMenu:
            return MainMenu(size: CGSize(width: Screensize.width, height: Screensize.height))
        case SceneType.GamePlay:
            return GamePlay(size: CGSize(width: Screensize.width, height: Screensize.height))
        }
    }
    
    func run(_ fileName: String, onNode: SKNode){
        if.PlayerStats.shared.getSound(){
            onNode.run(SKAction.playSoundFileNamed(fileName, waitForCompletion: false))
        }
    }
}
