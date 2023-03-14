//
//  BDButton.swift
//  LittleMan
//
//  Created by Valerie on 14.03.23.
//

import SpriteKit

class BDButton: SKNode {
    var button: SKSpriteNode
    private var mask: SKSpriteNode
    var crop: SKCropNode
    private var action: () -> Void
    var isEnabled = true
    var titleLabel: SKLabelNode?
    
    
    init (imageNamed: String, title: String? = "", buttonAction: @escaping () -> Void) {
        button = SKSpriteNode(imageNamed: "")
        titleLabel = SKLabelNode(text: title)
        
        mask = SKSpriteNode(color: SKColor.black, size: button.size)
        mask.alpha = 0
        
        crop = SKCropNode()
        crop.maskNode = button
        crop.zPosition = 3
        crop.addChild (mask)
        
        action = buttonAction
        
        super.init()
        
        isUserInteractionEnabled = true
        
        setupNodes()
        addNodes()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError ("init(coder:) has not been blabalbla")
    }
    
    func setupNodes(){
        button.zPosition = 0
        
        if let titleLabel = titleLabel{
            titleLabel.fontName = "Font"
            titleLabel.fontSize = CGFloat.universalFont(size: 24)
            titleLabel.fontColor = SKColor.white
            titleLabel.zPosition = 1
            titleLabel.horizontalAlignmentMode = .center
            titleLabel.verticalAlignmentMode = .center
            
        }
    }
    
    func addNodes(){
        addChild(button)
        if let titleLabel = titleLabel{
            addChild(titleLabel)
        }
        
        addChild(crop)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        if isEnabled{
            mask.alpha = 0.5
            run(SKAction.scale(by: 1.05, duration: 0.05))
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?){
        if isEnabled{
            for touch in touches{
                let location: CGPoint = touch.location(in:self)
                
                if button.contains(location){
                    mask.alpha = 0.5
                } else {
                    mask.alpha = 0.0
                }
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?){
        if isEnabled{
            for touch in touches{
                let location: CGPoint = touch.location(in:self)
                
                if button.contains(location){
                    Manager.shared.run("music-glitter.mp3", onNode: self)
                    disable()
                    action()
                    run(SKAction.sequence([SKAction.wait(forDuration: 0.2), SKAction.run({self.enabled()
                    })]))
                }
            }
        }
    }
    
    func disable(){
        isEnabled = false
        mask.alpha = 0.0
        button.alpha = 0.5
    }
    
    func enabled(){
        isEnabled = true
        mask.alpha = 0.0
        button.alpha = 1.0
    }
    
    func logAvailableFonts(){
        for family: String in UIFont.familyNames {print("\(family)")}
        //for names: String in UIFont.fontNames(for: FamilyNames: family)
        //{print("\(names)")}
    }
    
    func scaleTo(screenWithPercentage: CGFloat){
        let aspectRatio = button.size.height / button.size.width
        let screenWidth = Screensize.width
        var screenHeight = Screensize.height
        if DeviceType.isiPhoneX{
            screenHeight -= 80.0
        }
        button.size.width = screenWidth * screenWithPercentage
        button.size.height = button.size.width * aspectRatio
    }
    
}
