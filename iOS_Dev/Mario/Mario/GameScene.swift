//
//  GameScene.swift
//  Mario
//
//  Created by dmtrii on 13.12.2019.
//  Copyright © 2019 dmtrii. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
        anchorPoint = CGPoint.zero
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
