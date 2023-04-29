//
//  GameViewController.swift
//  StarshipShooter: "Escape From Trappist 7"
//  tutorial Jack iLy https://www.youtube.com/watch?v=Q1C-M0MaPM4
//  Created by yannemal on 28/04/2023.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        if let scene = GKScene(fileNamed: "GameScene") {
            
     
            if let sceneNode = scene.rootNode as! GameScene? {
                

                if let view = self.view as! SKView? {
                    view.presentScene(sceneNode)
                    
                    view.ignoresSiblingOrder = false
                    
                    view.showsFPS = false
                    view.showsNodeCount = false
                }
            }
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .portrait
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
