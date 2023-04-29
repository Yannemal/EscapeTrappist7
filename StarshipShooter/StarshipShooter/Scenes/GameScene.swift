//  GameViewController.swift
//  StarshipShooter: "Escape From Trappist 7"
//  tutorial Jack iLy 2019 https://www.youtube.com/watch?v=Q1C-M0MaPM4
//  Created by yannemal on 28/04/2023.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    // MARK: - Properties
    
    // MARK: - Systems
    
    override func didMove(to view: SKView) {
        setUpNodes()
    }
    
    override func update(_ currentTime: TimeInterval) {
        moveBG()
    }
}

// MARK: - Configurations

extension GameScene {
    
    func setUpNodes() {
        createBG()
    }
    
    // TODO: - Background
    
    func createBG() {
        for i in 0...2 {
            let bg = SKSpriteNode(imageNamed: "background")
            bg.zPosition = -1.0 // depth position layer
            bg.name = "BG" // give node a name so we can find it later
            bg.position = CGPoint(x: frame.width/2.0, y: CGFloat(i)*bg.frame.height + frame.height/2.0 )
            //the frame is the GameScene or screen iPhone
            addChild(bg)
        }
    }
    
    func moveBG() {
        enumerateChildNodes(withName: "BG") {  (node, _) in
            let node = node as! SKSpriteNode
            node.position.y -= 4.5
            
            if node.position.y < -self.frame.height {
                node.position.y += self.frame.height*2.0 + self.frame.height/2.0
            }
        
        }
        
    }
    
}
        
