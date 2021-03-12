//
//  GameScene.swift
//  retro_rpg_ios
//
//  Created by izumiyoshiki on 2021/03/08.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var textFrame : SKSpriteNode = SKSpriteNode(imageNamed: "frame")
    var text : SKLabelNode = SKLabelNode()
    var words : Words = Words()
    var place : Place = Place()

    var textNumber: Int = 0
    override func didMove(to view: SKView) {
        
//        butsuma = SKTexture(imageNamed: "scene001_butsuma")
        addChild(place.place)
        addChild(place.ren)
        addChild(place.sara)
        addChild(place.toushu)
        addChild(place.nakada)
        addChild(textFrame)
        addChild(words.text)

        textFrame.xScale = 2.0
        textFrame.yScale = 2.0
        textFrame.position.y = -100.0
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
        textNumber += 1
        
        words.nextWords(textNumber: textNumber, characterNumber: 0)
        place.nextPlace(textNumber: textNumber)

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
