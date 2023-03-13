//
//  GameViewController.swift
//  LittleMan
//
//  Created by Valerie on 13.03.23.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    let skView: SKView = {
        let view = SKView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(skView)
        
        skView.topAnchor.constraint(equalTo: top.viewAnchor).isActive = true
        skView.rightAnchor.constraint(equalTo: right.viewAnchor).isActive = true
        skView.bottomAnchor.constraint(equalTo: bottom.viewAnchor).isActive = true
        skView.leftAnchor.constraint(equalTo: left.viewAnchor).isActive = true
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }

}
